/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#pragma once
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>


using namespace eosio;
namespace rps {
    enum Move : uint8_t { none = 0, rock = 1, paper = 2, sissor = 3 };

    struct PACKED(game) {
        game() {};
        game(uint64_t id, account_name p, account_name o) {
            game_id = id;
            player = p;
            opponent = o;

            o_move = p_move = Move::none;
        };

        uint64_t game_id;
        account_name player;
        account_name opponent;
        account_name winner = N(none);
        Move p_move;
        Move o_move;

    };

    struct PACKED(rx) {
        rx() {};
        rx(account_name p) {
            player = p;
        };
        account_name player;
    };

    struct PACKED(prx) {
        prx() {};
        prx(uint64_t gid, account_name p) {
            player = p;
            game_id = gid;
        };
        uint64_t game_id;
        account_name player;
    };

    struct PACKED(shoot) {
        uint64_t game_id;
        account_name by;
        Move move;
    };

    struct PACKED(agame) {
        agame() {};
        agame(uint64_t id) {
            game_id = id;
        };
        uint64_t game_id;
    };

    struct PACKED(account) {
        account() {};
        account(account_name p) {
            player = p;
        };

        void clone(account o) {
            player = o.player;
            games_played = o.games_played;
            wins = o.wins;
            losses = o.losses;
            ties = o.ties;
            rock = o.rock;
            paper = o.paper;
            sissor = o.sissor;
        };

        account_name player;
        uint32_t games_played;
        uint32_t wins;
        uint32_t losses;
        uint32_t ties;
        uint32_t rock;
        uint32_t paper;
        uint32_t sissor;
    };

    typedef table <N(rps), N(rps), N(games), game, uint64_t> Games;
    typedef table <N(rps), N(rps), N(prx), prx, uint64_t> PendingRequests;
    typedef table <N(rps), N(rps), N(agames), agame, uint64_t> ActiveGames;
    typedef table <N(rps), N(rps), N(accounts), account, uint64_t> Accounts;
}
