// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    mapping(address => bool) public members;

    function addMember(address _member) external {
        members[_member] = true;
    } 
    
}