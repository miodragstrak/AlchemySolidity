// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    function double(uint x) external pure returns(uint) {
        return 2*x;
    }

    function double(uint x, uint y) public pure returns(uint, uint) {
        return(2*x, 2*y);
    }

}