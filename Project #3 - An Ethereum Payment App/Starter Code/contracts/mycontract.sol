// SPDX-License-Identifier: UNLICENSED

// DO NOT MODIFY BELOW THIS
pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Splitwise {
// DO NOT MODIFY ABOVE THIS

// ADD YOUR CONTRACT CODE BELOW

    mapping(address => mapping(address => uint256)) public debts;

    function addDebt(address debtor, uint256 amount) public {
        debts[msg.sender][debtor] += amount;
    }

    function getDebt(address creditor, address debtor) public view returns (uint256) {
        return debts[creditor][debtor];
    }

}
