// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Proxy.sol";
import "../src/ProxyContractV1.sol";
import "../src/ProxyContractV2.sol";

contract ProxyTest is Test {
    Proxy public proxy;
    ContractV1 public contractV1;
    ContractV2 public contractV2;

    function setUp() public {
        proxy = new Proxy();
        contractV1 = new ContractV1();
        contractV2 = new ContractV2();
    }

    function testProxy() public {
        // Set the implementation to contractV1
        proxy.setImplementation(address(contractV1));
        // Initialize the implementation
        ContractV1 proxied = ContractV1(address(proxy));
        proxied.initialize();
        // Check the implementation and the value
        assertEq(proxy.getImplementation(), address(contractV1));
        assertEq(proxied.getContractName(), "ContractV1");
        assertEq(proxied.getValue(), 1);

        // Set the value
        proxied.setValue(10);

        // Set the implementation to contractV2
        proxy.setImplementation(address(contractV2));
        // Initialize the implementation
        ContractV2 proxied2 = ContractV2(address(proxy));
        // Check the value
        assertEq(proxied2.getValue(), 10);

        // Initialize the implementation
        proxied2.initialize();
        // Check the implementation and the value
        assertEq(proxy.getImplementation(), address(contractV2));
        assertEq(proxied2.getContractName(), "ContractV2");
        assertEq(proxied2.getValue(), 2);
    }     
}
