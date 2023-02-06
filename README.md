# Solidity-Merkle-Proof-Tutorial

This is a tutorial on how to create a Merkle Proof in Solidity. It is based on several other tutorials, but I wanted to summary the process in a single place.

## What is a Merkle Proof?

A Merkle Proof is a way to prove that a value is in a Merkle Tree. 
A Merkle Tree is a binary tree where each node is the hash of its children. 
The root of the tree is the hash of the entire tree. 
The leaves of the tree are the values that are being stored in the tree. 
The leaves are hashed together to create the root of the tree. 
The root of the tree is then hashed with the other leaves to create the next level of the tree. 
This process continues until there is only one node left, the root of the tree.


---

## Tutorial
1. MerkleTree.sol - This is the Merkle Tree contract that will be used to create the Merkle Tree. [(ref: murky)](https://github.com/dmfxyz/murky)
2. MerkleProof.sol - This is the Merkle Proof contract that will be used to create the Merkle Proof. (Ready..)
3. 

## Getting Started

If you don't have forge installed:

1. `curl -L https://foundry.paradigm.xyz | bash`
2. `foundryup`
3. `brew install libusb`
4. then forge should be intalled

```
$ git clone https://github.com/rhcproc/forge-openzeppelin
$ cd forge-openzeppelin
$ forge build
$ forge test
```

---

## Running Tests
When adjusting the contract being tested you may need to compile from scratch. Sometimes forge bugs out and doesn't recompile properly. 
```
forge clean && forge test -vvv
```
- `-v`, `-vv`, `-vvv`, `-vvvv` : each v increases the details returned from the test (I usually use `-vvv` & `-vvvv`)
- `forge test -vvv --match--contract <CONTRACT_NAME>` : tests a single contract (don't put `.t.sol` or `.sol` at the end).

---

## References
- [https://medium.com/coinmonks/merkle-proofs-explained-7a7d1c4e4e4b](https://medium.com/coinmonks/merkle-proofs-explained-7a7d1c4e4e4b)


## Pull Requests
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


### Default Configuration

Including `.gitignore`, `.vscode`, `remappings.txt`


