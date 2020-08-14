const Sample = artifacts.require('Sample');

module.exports = (deployer) => {
  deployer.deploy(Sample, "Mr. Big");
};
