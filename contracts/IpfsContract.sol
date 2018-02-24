pragma solidity ^0.4.18;

contract IpfsContract {
    string public ipfsHash;
    
    function setHash(string _ipfsHash) external {
        ipfsHash = _ipfsHash;   
    }
}