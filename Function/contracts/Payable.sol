// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract PayableFun {
    mapping (address =>uint) public balances;

    function deposit() public payable  {
        require(msg.value > 0, "Kirim ETH:${msg.value}");
        balances[msg.sender] +=msg.value;
    }

    function myBalance()public view returns(uint) {
        return balances[msg.sender];
    }

    function getBalance(address user) public view returns (uint) {
        return balances[user];
    }

    function withDraw()public  {
        uint amount=balances[msg.sender];
        require(amount > 0,"Saldo Kosong");

        balances[msg.sender]=0;
        (bool success,)=payable (msg.sender).call{value:amount}("");
        require(success,"Gagal Tarik Dana");
    }
}