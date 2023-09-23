// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Contract {

    function filterEven(uint[] calldata x) 
        external 
        pure 
        returns(uint[] memory) 
    {
		uint elements;
		for(uint i = 0; i < x.length; i++) {
			if(x[i] % 2 == 0) {
                elements++;
            }
		}

        uint[] memory filtered = new uint[](elements);

        uint index = 0;

        for (uint i = 0; i < x.length; i++) {
            if(x[i] % 2 == 0) {
                filtered[index] = x[i];
                index++;
            }
        }

        return filtered;

    }
    
}