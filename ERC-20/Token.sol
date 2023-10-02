// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Token {
    uint256 public totalSupply;
    string public name = "Lelemur";
    string public symbol = "LLM";
    uint8 public decimals = 18;

    mapping(address => uint) public balances;

    event Transfer(address sender, address recepient, uint256 value);

    function balanceOf(address addr) view external returns(uint) {
        return balances[addr];
    }

    function transfer(address recepient, uint amount) public returns(bool) {
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        balances[recepient] += amount;
        emit Transfer(msg.sender, recepient, amount);
        return true;
    }

    constructor() {
        totalSupply = 1000 * (10 ** uint256(decimals));
        balances[msg.sender] = totalSupply;
    }
}