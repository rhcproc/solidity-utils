// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ContractV2 {
    uint256 public value;
    
    function initialize() public {
        value = 2;
    }

    function getContractName() public pure returns (string memory) {
        return "ContractV2";
    }

    function setValue(uint256 _value) public {
        value = _value;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}