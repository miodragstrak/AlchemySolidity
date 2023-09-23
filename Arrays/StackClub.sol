// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract StackClub {
	address[] members; 

	function isMember(address member) external view returns(bool) {
		for(uint i = 0; i < members.length; i++) {
			if(members[i] == member) {
				return true;
			}
		}
		return false;
	}

	function addMember(address member) external {
		members.push(member);
	}
}