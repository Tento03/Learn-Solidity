// SPDX-License-Identifier: MIT
pragma solidity >0.6.0 <=0.8.4;

contract Address {
    mapping(address=>uint) public balances;

    function deposit() public payable  {
        require(msg.value >0, 'Mengirim ETH');
        balances[msg.sender]+=msg.value;
    }

    function myBalance()public view returns (uint) {
        return balances[msg.sender];
    }

    function getBalance(address user) public view returns(uint) {
        return  balances[user];
    }

    function withdrawTo(address to, uint _amount) public {
        require(_amount > 0, "Jumlah harus lebih dari 0");
        require(balances[msg.sender] >= _amount, "Saldo tidak cukup");
        require(to != address(0), "Alamat tujuan tidak valid");

        balances[msg.sender] -= _amount;

        (bool success, ) = payable(to).call{value: _amount}("");
        require(success, "Gagal tarik dana");
    }

}