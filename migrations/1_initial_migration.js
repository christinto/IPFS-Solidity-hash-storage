var Migrations = artifacts.require("Migrations");

var IpfsContract = artifacts.require('IpfsContract');
module.exports = function(deployer) {
  deployer.deploy(Migrations).then(function() {
      return deployer.deploy(IpfsContract).then(function() {
      })
  })
};
