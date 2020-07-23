require("dotenv").config();
const HDWalletProvider = require("@truffle/hdwallet-provider");
const Web3 = require("web3");
const web3 = new Web3(process.env.INFURA_URI);

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*",
    },
    testnet: {
      provider: () =>
        new HDWalletProvider(process.env.PRIVATE_KEY, process.env.INFURA_URI),
      network_id: 3,
      gasPrice: web3.utils.toWei("36", "gwei"),
    },
    tenderly: {
      host: "127.0.0.1",
      port: 9545,
      network_id: "*",
      gasPrice: 0,
    },
  },
  mocha: {
    timeout: 100000,
  },
  // Configure your compilers
  compilers: {
    solc: {
      version: "^0.6.0",
    },
  },
};
