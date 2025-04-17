// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // Sets the minimum Solidity version to use in the contract

contract SimpleStorage {
    uint256 num;

    // struct -> JS objects
    struct People {
        uint256 age;
        string name;
    }
    People public people1 = People({
        age: 45,
        name: "Luis"
    });

    // Dynamic public array
    People[] public people;

    // Static array with max length 3
    // uint[3] public scores;

    function store(uint256 _num) public {
        num = _num;
    }

    // View and Pure functions do not cost gas when called externally (off-chain), 
    // but if called inside a transaction (on-chain), the overall transaction will cost gas.
    function retrieve() public view returns (uint256) {
        return num;
    }

    // memory -> used for complex data types; 
    // stores the value inside a temporary memory location
    // wipes out after the function completes execution
    // costs less gas than "storage"
    function addPeople(uint _age, string memory _name) public {
        people.push(People(_age, _name));
    }
}