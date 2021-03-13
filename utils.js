const Web3 = require('web3');

const web3 = new Web3("https://127.0.0.1:8545");

let private_key= "0x4f2a4e3b282681dd2ed858dc3d3a853129b499c8379867d95a745671657f7e23";
let account = web3.eth.accounts.wallet.add(private_key);
console.log(account);

module.exports ={
    web3:web3,
    account:account
}