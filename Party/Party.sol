// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Party {
    uint deposit;
    address[] members;
    mapping(address => bool) paid;

	constructor(uint _deposit) {
        deposit = _deposit;
    }

    function rsvp() external payable {
        require(!paid[msg.sender]);
        require(msg.value == deposit);
        members.push(msg.sender);
        paid[msg.sender] = true;
    }

    function payBill(address venue, uint amount) external {
        (bool s1, ) = venue.call{ value: amount }("");
        require(s1);
        uint share = address(this).balance / members.length;
        for(uint i = 0; i < members.length; i++) {
            (bool s2, ) = members[i].call{ value: share }("");
            require(s2);
        }
    }
}