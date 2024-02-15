// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract mycontract{
    int a;
    address owner;
    event uauth(address);
    constructor()public {
        a=96;
        owner=msg.sender;
    }
    function get()public view returns(int){
        return a;
    }
    function set(int v)public{
        if(msg.sender==owner){
            a=v;
        }
        else {
            emit uauth(msg.sender);
            revert("Access Denied");
        }
    }
}