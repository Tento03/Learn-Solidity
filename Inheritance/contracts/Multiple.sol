// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A{
    string nameA;

    constructor (string memory _nameA){
        nameA=_nameA;
    }
}

contract B {
    string nameB;

    constructor(string memory _nameB) {
        nameB=_nameB;
    }
}

contract C is A,B {
    string nameC;

    constructor(string memory _nameC) A(_nameC) B(_nameC) {
        nameC=_nameC;
    }
}