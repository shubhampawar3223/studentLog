const{bytecode} = require('./constraints');
const {web3,account} = require('./utils')

//console.log(web3)
async function deploy(){
      
   let a = await web3.eth.sendTransaction({
       from:account.address,
       gas:800000000,
       data:bytecode
   })
   .on('receipt',console.log);
}

deploy();