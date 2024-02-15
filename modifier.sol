// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorage {
    
   int a;
   address private owner;
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can access");
        _; 
    }

    

   
    constructor() {
        owner = msg.sender;
    }

    
    function set(int v)public  onlyOwner {
        a = v;
    }

    
    function get()public  onlyOwner view returns (int) {
        return a;
    }
}
