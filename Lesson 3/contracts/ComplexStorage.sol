// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

// Inheritance => is -> extends in Java
contract ComplexStorage is SimpleStorage {

    // Can only override virtual functions
    // Use the override keyword
    function store(uint256 _num) public override {
        num = _num + 100;
    }
}