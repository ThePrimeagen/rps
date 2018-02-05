const eos = require('eosjs').Localnet();

const scope = 'rps';
const code = 'rps';
const table = 'games';
eos.
    getTableRows({scope, code, table, json: true}).
    then((x) => { console.log(x.rows[0]); }).
    catch((e) => console.log('error', e));

