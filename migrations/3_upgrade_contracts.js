const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

const BasicErc20 = artifacts.require('BasicErc20');
const BasicErc20v2 = artifacts.require('BasicErc20v2');

module.exports = async function (deployer) {
    // await deployProxy(BasicErc20, ['42 coin', '42'], { deployer, initializer: 'initialize' });
    const existing = await BasicErc20.deployed();
    console.log('existing.address: ', existing.address)
    await upgradeProxy(existing.address, BasicErc20v2, { deployer });
    console.log('BasicErc20v2.address: ', BasicErc20v2.address)

};
