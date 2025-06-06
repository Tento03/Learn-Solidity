// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <=0.8.0;

contract Variable {
    //variable state
    uint sumVar;

    function sum(uint num1,uint num2) public  {
        uint sumTot=num1+num2;
        sumVar=sumTot;
    }

    function sumView() public view returns (uint)  {
        return sumVar;
    }
}

contract Type {
    bool isTrue=true;
    uint num1=1;
    int32 num2=2;

    byte huruf1='A';
    string nama='Naruto';

    enum Gender {Male, Female }

    function getEnum()public pure returns(Gender) {
        return Gender.Female;
    }
}