// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

abstract contract Animal{
    string name;

    constructor(string memory _name) {
        name=_name;    
    }

    function speak() public view virtual returns (string memory){}

    function getName()public view returns (string memory ) {
        return name;
    }
}

contract Dog is Animal {
    constructor(string memory _name) Animal(_name){
        
    }

    function speak() public pure override returns (string memory){
        return 'Anjing kau';
    }
}

contract Cat is Animal{
    constructor(string memory _name) Animal(_name){

    }

    function speak() public pure override returns (string memory ){
        return 'Meong';
    }
    
}
contract DogHouse is Animal {
    constructor(string memory _name) Animal(_name){
        name=_name;
    }
}