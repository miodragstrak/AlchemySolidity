// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }
	
	struct Vote {
		Choices choice;
		address voter;
	}
	
	// TODO: create a public state variable: an array of votes

	Vote[] votes;

	function createVote(Choices choice) external {
		// TODO: add a new vote to the array of votes state variable
		votes.push(Vote(choice, msg.sender));


	}
}