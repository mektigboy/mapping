// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract Mapping {
    mapping(address => uint) public balances;
    // Nested mapping.
    mapping(address => mapping(address => bool)) public isFriend; // If address is friend with another address.

    uint bal;
    uint bal2;

    function setFunc() external {
        balances[msg.sender] = 123;
    }
    function getFunc() external {
        bal = balances[msg.sender];
        bal2 = balances[address(1)]; // 0
    }
    function set2Func() external {
        balances[msg.sender] += 456;
    }
    function getBal() external view returns (uint) {
        return(bal);
    }
    function deleteFunc() external {
        delete balances[msg.sender]; // 0
    }
    function nested() external {
        isFriend[msg.sender][address(this)] = true;
    }
}
