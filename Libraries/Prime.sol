// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library Prime {

    function dividesEvenly(uint par1, uint par2) public pure returns(bool) {
        return par1 % par2 == 0;
    }

    function isPrime(uint par) public pure returns(bool) {
        if (par < 3) {
            return true;
        }
        for(uint i = 2; i < par; i++) {
            if (!dividesEvenly(par, i)) {
                return false;
            }
        }

        return true;
    }
    
}