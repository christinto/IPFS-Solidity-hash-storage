# IPFS-Solidity-hash-storage
Using IPFS to store certain data (user info) and then storing the hash, thus generated from IPFS, in the ethereum blockchain using Solidity and Truffle

Imported the Js-Ipfs module.
Used JSON structure for the test.js file to store various attributes of user like date of birth, name, sex etc.
Insert this into the IPFS environment.
Call the setHash function in the contract to give in this hash into the blockchain.
Print the the hash on the terminal

The contract IpfsContract.sol is very small. Just takes the hash and sets it and stores it into the ethereum blockchain.
