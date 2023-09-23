// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract StackClub {

    address[] members;

    constructor() {
        members.push(msg.sender);
    }

    function addMember(address addr) external {
        require(this.isMember(msg.sender), 'Throw');
        members.push(addr);
    }

    function isMember(address x) external view returns(bool){
        for (uint i = 0; i < members.length; i++) {
            if(x == members[i]) {
                return true;
            }
        }
    
    return false;
        
    }

    function removeLastMember() external {
        require(this.isMember(msg.sender), 'Throw');
        members.pop();
    }
    
}