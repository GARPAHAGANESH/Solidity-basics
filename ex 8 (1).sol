// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract myContract{
  struct Person{
  string f;
  string l;
}
Person[]public people;
int public pc=0;
function add(string memory f,string memory l)public {
  people.push(Person(f,l));
  pc++;
}
}
