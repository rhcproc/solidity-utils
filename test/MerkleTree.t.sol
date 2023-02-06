// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MerkleTree.sol";

contract MerkleTest is Test {
    MerkleTree public m;

    function setUp() public {
        m = new MerkleTree();
    }

    function testTrueVerify() public {
        bytes32[] memory data = new bytes32[](4);
        data[0] = bytes32("0x0");
        data[1] = bytes32("0x1");
        data[2] = bytes32("0x2");
        data[3] = bytes32("0x3");
        // Get Root, Proof, and Verify
        bytes32 root = m.getRoot(data);
        bytes32[] memory proof = m.getProof(data, 2); // will get proof for 0x2 value
        bool verified = m.verifyProof(root, proof, data[2]); // true!
        console.log("true - virified", verified);
        assertTrue(verified);
    }

    function testFalseVerify() public {
        bytes32[] memory data = new bytes32[](4);
        data[0] = bytes32("0x0");
        data[1] = bytes32("0x1");
        data[2] = bytes32("0x2");
        data[3] = bytes32("0x3");
        // Get Root, Proof, and Verify
        bytes32 root = m.getRoot(data);
        bytes32[] memory proof = m.getProof(data, 2); // will get proof for 0x2 value
        bool verified = m.verifyProof(root, proof, data[1]); // false! (data[1] != data[2])
        console.log("false - virified", verified);
        assertFalse(verified);
    }
}