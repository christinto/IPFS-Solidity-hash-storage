const IPFS = require('ipfs')  // importing IPFS module and instantiating it.
const node = new IPFS()

const IpfsContract = artifacts.require("IpfsContract")  // Calling on my solidity contract.

async function test() {
    const data = JSON.stringify({           // creating a basic JSON Structure.
        name: "Rahul Kothari",
        age: "21",  // maybe 21?
        sex: "male"
    })

    const ipfsHash = await node.add(data)       //add is a function provided in the IPFS Module. It is used to add data in IPFS
    const instance = await IpfsContract.deployed()   //contract.deployed() used to deploy the contract into the truffle ethereum environment.

    await instance.setHash.sendTransaction(ipfsHash)    //setHash -> defined in my contract.
//    sendTransaction is a functionality provided by Solidity/Truffle to do Transactions(when we input data into the contract)

    let returnedHash = await instance.ipfsHash.call()

    console.log(ipfsHash)
    console.log(returnedHash)

    console.log(JSON.parse(await node.cat(returnedHash)))  // cat -> IPFS functionality.

}

test()