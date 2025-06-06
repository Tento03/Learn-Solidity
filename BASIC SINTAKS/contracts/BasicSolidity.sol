// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <=0.8.0;

contract BasicSolidity {
   uint storedData;

    //melakukan set
   function set(uint x) public {
    storedData=x;  
   } 

    //melakukan get
    function get() public view  returns (uint)  {
        return storedData;
    }
}