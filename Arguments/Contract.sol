// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x = x + 1;
    }

    function add(uint a) external view returns(uint) {
        return a + x;
    }
    
}