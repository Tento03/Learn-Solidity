// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A {
    string name;
    constructor(string memory _nameA) {
        name=_nameA;
    }
}

contract B is A {
    constructor(string memory _nameB) A(_nameB){
        
    }
}

contract C is B {
    constructor(string memory _nameC) B(_nameC) {
        
    }
}