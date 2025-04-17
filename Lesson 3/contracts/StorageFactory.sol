// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public storages;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        storages.push(simpleStorage);
    }

    function sfStore(uint256 _idx, uint256 _num) public {
        storages[_idx].store(_num);
    }

    function sfRetrieve(uint256 _idx) public view returns (uint256) {
        return storages[_idx].retrieve();
    }
}