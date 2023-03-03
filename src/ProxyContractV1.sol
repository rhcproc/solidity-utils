// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ContractV1 {
    uint256 public value;
    
    function initialize() public {
        value = 1;
    }

    function getContractName() public pure returns (string memory) {
        return "ContractV1";
    }

    function setValue(uint256 _value) public {
        value = _value;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}