# Forge-OpenZeppelin

A template for quickly getting started with forge + OpenZeppelin inspired by [forge-template](https://github.com/degatchi/forge-template)

---

## Getting Started

If you don't have forge installed:

1. `curl -L https://foundry.paradigm.xyz | bash`
2. `foundryup`
3. `brew install libusb`
4. then forge should be intalled

```
mkdir my-project
cd my-project
forge init --template https://github.com/rhcproc/forge-openzeppelin
forge install openzeppelin/openzeppelin-contracts
forge build
forge test
```
or 

```
git clone https://github.com/rhcproc/forge-openzeppelin
cd forge-openzeppelin
forge install openzeppelin/openzeppelin-contracts
forge build
forge test
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

## Features


 
### CI with Github Actions

Automatically run linting and tests on pull requests.

### Default Configuration

Including `.gitignore`, `.vscode`, `remappings.txt`


