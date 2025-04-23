// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe {
    function fund() public payable {
        require(msg.value >= 0.0001 ether, "too little amount");
    }

    // function withdraw() {}
}