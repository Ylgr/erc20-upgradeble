const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const BasicErc20 = artifacts.require('BasicErc20');

module.exports = async function (deployer) {
    const instance = await deployProxy(BasicErc20, ["Ylgr Token", "YYLLGGRR"], { deployer });
    console.log('Deployed', instance.address);
};
