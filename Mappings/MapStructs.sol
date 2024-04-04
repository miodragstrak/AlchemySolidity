// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

	function createUser() external {

		require(users[msg.sender].isActive == false);

		users[msg.sender] = User(100, true);

	}

}