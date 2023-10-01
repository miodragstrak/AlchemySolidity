// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "./Hero.sol";

contract Warrior is Hero(200) { 
    function attack(address _enemyAddress) public override {
        Enemy enemy = Enemy(_enemyAddress);
        enemy.takeAttack(Hero.AttackTypes.Brawl);
        super.attack(msg.sender);
    }
}