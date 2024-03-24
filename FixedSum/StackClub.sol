// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {

    address[] members;

    function addMember(address x) external {
        members.push(x);
    }

    function isMember(address y) external view returns(bool){
        for(uint i = 0; i < members.length; i++) {
            if (members[i] == y) {
                return true;
            }
        }
            return false;
    }
    
}