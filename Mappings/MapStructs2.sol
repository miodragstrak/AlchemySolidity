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

	function transfer(address recipient, uint amount) external {
		require(users[msg.sender].isActive == true);
		require(users[recipient].isActive == true);

		users[recipient].balance = users[recipient].balance + amount;
		users[msg.sender].balance = users[msg.sender].balance - amount;
	}



}