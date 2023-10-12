// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library UIntFunctions {
	function isEven(uint x) public pure returns(bool) {
		return x % 2 == 0;
	} 
}