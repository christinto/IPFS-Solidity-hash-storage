//adding getter function, previously only had setHash function..
pragma solidity ^0.4.18;


contract IpfsContract {
    string public ipfsHash;
    
    function setHash(string _ipfsHash) external {
        ipfsHash = _ipfsHash;   
    }

    function getHash() view returns (string) {
        return ipfsHash;
    }
}

/*
// Once deployed, try within truffle console
instance.ContractfunctionName(argument).then(function(result){
console.log("Value was set to", result.logs[0].args.val);
})

IPFS STRING QmNkjdxo83a2p6t9DMpHS31R7pUJUz6PxtMEU4Ea1XPker

instance.setHash('QmNkjdxo83a2p6t9DMpHS31R7pUJUz6PxtMEU4Ea1XPker').then(function(result){
console.log("Value was set to", result.logs[0].args.val);
})
-----------------
This Worked :D 12/3/18. Wrote the getHash function and figured out web3 command line finally! :D
Understand the command line and smart contracts conceptually and through logic...
What a rush. Stayed til like 7 figuring this out :D..
truffle(development)> IpfsContract.deployed().then(instance => instance.setHash.sendTransaction('0x3')).then(result => newStorageHash = result)
'0x9cc740cac2bfd3a3fabc484659556a368af354dcba2dc9190354fe3a5087032e'

replace sendTransaction with call to just call functions.. Calls getHash function I added. Don't know yet how to call the string type variable without using a function.
truffle(development)> IpfsContract.deployed().then(instance => instance.getHash.call()).then(result => ipfsHash = result)
-----------------
*/