// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // Sets the minimum Solidity version to use in the contract

contract SimpleStorage {
    uint256 public num;

    function store(uint256 _num) public {
        num = _num;
    }

    // View and Pure functions do not cost gas when called externally (off-chain), 
    // but if called inside a transaction (on-chain), the overall transaction will cost gas.
    function retrieve() public view returns (uint256) {
        return num;
    }
}