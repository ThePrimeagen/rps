const Eos = require('eosjs');
const eos = Eos.Localnet();

console.log(Object.keys(eos));
console.log(Object.keys(eos.__proto__));

