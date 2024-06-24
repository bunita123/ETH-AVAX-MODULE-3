// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Functions {
    uint public variables;

    constructor(){
        variables = 100;
    }

    function getvariable() public view returns(uint){
        return variables;
    }

    function add(uint _a, uint _b)public pure returns(uint){
        return _a + _b;
    }
    
}
