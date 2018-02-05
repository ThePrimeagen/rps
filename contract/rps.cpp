/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <rps.hpp>


namespace rps {

    void getOrCreateAccount(account& a) {
        account copy(a.player);
        if (!Accounts::get(copy)) {
            assert(Accounts::store(a), "Could not create new account");
            return;
        }

        a.clone(copy);
    }

    ///eos.getTableRows({scope, code, table, json: true}).then((x) => { console.log(x.rows[0]); }).catch((e) => console.log('error', e));
    bool valid_shoot(const uint8_t s) {
        return s == Move::rock || s == Move::paper || s == Move::sissor;
    }

    bool doesPlayerBeatOpponent(Move pMove, Move oMove) {
        return (pMove == Move::rock && oMove == Move::sissor) ||
            (pMove == Move::paper && oMove == Move::rock) ||
            (pMove == Move::sissor && oMove == Move::paper);
    }

    void updateAccount(account& a, bool won, bool tie, Move move) {
        if (won) {
            a.wins++;
        }

        else if (tie) {
            a.ties++;
        }

        else {
            a.losses++;
        }

        if (move == Move::rock) {
            a.rock++;
        }
        else if (move == Move::paper) {
            a.paper++;
        }
        else {
            a.sissor++;
        }

        assert(Accounts::update(a), "Unable to update the account");
    }

    void finishGame(game& g) {

        if (g.p_move == Move::none || g.o_move == Move::none) {
            assert(Games::update(g), "Could not update game");
            return;
        }

        bool tie = false;
        bool playerWins = false;
        if (g.p_move == g.o_move) {
            g.winner = N(tie);
            tie = true;
        }

        else {
            playerWins = rps::doesPlayerBeatOpponent(g.p_move, g.o_move);
        }

        account player(g.player);
        account opponent(g.opponent);

        rps::getOrCreateAccount(player);
        rps::getOrCreateAccount(opponent);
        rps::updateAccount(player, playerWins, tie, g.p_move);
        rps::updateAccount(opponent, !playerWins, tie, g.o_move);
        assert(Games::update(g), "Could not finish game.");
    }

    void apply_request(const prx& s) {
        require_auth(s.player);

        prx gpr;
        bool exists = PendingRequests::front(gpr);

        // TODO: Create game
        if (!exists) {
            prx p(s.player);
            assert(PendingRequests::store(p), "Could not store pending requset");
            return;
        }

        assert(s.player != gpr.player, "You cannot play yourself");

        agames checkForDupes;
        checkForDupes.by = gpr.player;

        assert(!ActiveGames::get(checkForDupes, s.player), "You already have an active game against this opponent");

        game backGame;
        Games::back(backGame);

        uint64_t gameId = (backGame.game_id) ? backGame.game_id + 1 : 1;

        agames ap(gpr.player, gameId);

        assert(ActiveGames::store(ap, s.player), "could not store player active game");

        game g(gameId, s.player, gpr.player);
        assert(Games::store(g), "Could not store game");
        assert(PendingRequests::remove(gpr), "Could not remove the pending hame");
    }


    void apply_shoot(const shoot& s) {
        require_auth(s.by);
        assert(rps::valid_shoot(s.move), "Move can only be values 1, 2, or 3");

        game g;
        g.game_id = s.game_id;
        assert(Games::get(g), "Game does not exist");
        assert(g.player == s.by || g.opponent == s.by, "This game can only be played by the players.");
        assert(g.winner == N(none), "You are not allowed to 1984 the past!  The game is complete.");

        uint8_t move;
        if (g.player == s.by) {
            assert(g.p_move == 0, "You have already shot, you cannot shoot again.");
            g.p_move = s.move;
        }

        else {
            assert(g.o_move == 0, "You have already shot, you cannot shoot again.");
            g.o_move = s.move;
        }

        rps::finishGame(g);
    }

    void apply_debug(const debug& d) {
        game g;
        g.game_id = d.game_id;
        assert(Games::get(g), "Game does not exist");

        eosio::print("GameID(", g.game_id, "):\n");
        eosio::print(eosio::name(g.player), "(", static_cast<uint32_t>(g.p_move));
        eosio::print(") vs (");
        eosio::print(static_cast<uint32_t>(g.o_move), ") ", eosio::name(g.opponent));
    }
};

/**
 *  The init() and apply() methods must have C calling convention so that the blockchain can lookup and
 *  call these methods.
 */
extern "C" {

    /**
     *  This method is called once when the contract is published or updated.
     */
    void init()  {
    }

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
        eosio::print( "Hello get: ", eosio::name(code), "->", eosio::name(action), "\n" );
        if (code == N(rps)) {
            switch (action) {
                case N(shoot):
                    //rps::get_games(current_message<rps::get>());
                    rps::apply_shoot(current_message<rps::shoot>());
                    break;
                case N(request):
                    rps::apply_request(current_message<rps::prx>());
                    break;
                case N(debug):
                    rps::apply_debug(current_message<rps::debug>());
                    break;
            }
        }
    }

} // extern "C"
