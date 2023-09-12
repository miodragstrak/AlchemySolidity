// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {

    function double(uint x) external pure returns(uint sum) {
        sum = x + x;
    }

    function double(uint x, uint y) public pure returns(uint, uint) {
        return(x + x, y + y);
    }

}