// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {

    function sum(uint256[] calldata x) external pure returns(uint total) {

        for(uint i = 0; i < x.length; i++) {
            total += x[i];
        }
    }
}