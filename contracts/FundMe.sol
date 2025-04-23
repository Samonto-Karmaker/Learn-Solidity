// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public constant MINIMUM_FUND_USD = 1 * 1e18;

    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;

    function fund() public payable {
        require(msg.value.getConversionRate() >= MINIMUM_FUND_USD, "Amount too low");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }

    // function withdraw() {}
}