// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Functions {
    uint totalNum;

    //pure modifier
    function sumPure(uint num1,uint num2) public pure returns (uint){
        return num1 + num2;
    }

    function sum(uint num1,uint num2) public{
        uint total=num1+num2;
        totalNum=total;
    }

    //view modifier
    function sumView() public view returns(uint) {
        return totalNum;
    }

    //without modifier
    function sumNumber(uint num1,uint num2)public returns (uint) {
        return totalNum=num1+num2;
    }

}