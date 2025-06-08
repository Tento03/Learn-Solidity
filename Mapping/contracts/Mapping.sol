// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping {
    struct Account{
        string name;
        uint balance;
    }

    mapping (address=>Account) public accounts;

    function register(string memory name)public  {
        accounts[msg.sender].name=name;
    }

    function deposit(uint amount)public  {
        require(bytes(accounts[msg.sender].name).length>0, 'null');
        accounts[msg.sender].balance+=amount;
    }

    function myAccount()public view returns (string memory,uint) {
        Account memory acc=accounts[msg.sender];
        return (acc.name,acc.balance);
    }

    function getAccount(address user)public view returns (string memory,uint) {
        Account memory acc=accounts[user];
        return (acc.name,acc.balance);
    }
}