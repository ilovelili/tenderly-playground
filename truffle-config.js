module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*",
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
