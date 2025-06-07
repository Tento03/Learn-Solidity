// SPDX-License-Identifier: MIT
pragma solidity >0.8.4 <0.9.0;

contract Array {
    uint[] public numbers;

    function sum(uint[] memory data)public pure returns (uint)  {
        uint total=0;
        for (uint i=0; i<data.length; i++) 
        {
           total+=data[i];
        }
        return total;
    }

    function addNumber(uint num) public {
        numbers.push(num);
    }

     function sumNumbers() public view returns (uint total) {
        for (uint i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
    }
}