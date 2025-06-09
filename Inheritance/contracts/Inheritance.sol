// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract A {
    string public name;

    constructor(string memory _name) {
        name=_name;
    }
}

contract B is A {
    constructor(string memory _newName) A(_newName) {
        name=_newName;
    }
}