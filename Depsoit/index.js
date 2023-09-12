const ethers = require('ethers');

function deposit(contract) {
    return contract.deposit({ value: ethers.utils.parseEther("1") });
}

module.exports = deposit;