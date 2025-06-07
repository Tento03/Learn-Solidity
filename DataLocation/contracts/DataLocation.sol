// SPDX-License-Identifier: MIT
pragma solidity <=0.8.17 <0.9.0;

contract DataLocation {
    string public name;

    // storage
    function changeName(string memory newName)public  {
        name=newName;
    }

    //memory
    function sum(uint[] memory data)public pure returns (uint) {
        return data[0]+data[1];
    }

    //calldatta
    function greet(string calldata name) external pure returns (string memory){
        return name;
    }
}