module.exports = {
    networks: {
        development: {
            host: "localhost",
            port: 8545, // renamed from 9545 to 8545 for ganache-cli
            network_id: "*" // Match any network id
        }
    }
};
