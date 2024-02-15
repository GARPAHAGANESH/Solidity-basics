// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {

   
    struct Student {
        
        string firstName;
        string lastName;
        uint256 id;
    }

    
    mapping (uint256 => Student) public result;
    uint256 public pc = 0;

    function add(string memory _firstName, string memory _lastName) public {
        pc++;
        result[pc] = Student(_firstName, _lastName, pc);
        
    }
}
