// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    address public owner;
    
    event receivedEther(address indexed from, uint amount);
    event fallbackCalled(address indexed from, uint amount, bytes data);

    modifier Owneronly{
        require(msg.sender ==owner);
        _;
    }
    constructor(){
        owner = msg.sender;
    }
    receive() external payable{
        emit receivedEther(msg.sender, msg.value);
    }
    fallback() external payable{
        emit fallbackCalled(msg.sender, msg.value, msg.data);
    }
   
    function getbalanceof(address _add)external view returns(uint){
        return _add.balance;
    }
    
}
