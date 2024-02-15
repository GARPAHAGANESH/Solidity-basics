// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Score { 
    uint score = 5; 
    function getScore() public view returns (uint) { 
        return score; 
    } 
    function setScore(uint new_score) public { 
        score = new_score; 
    } 
}
