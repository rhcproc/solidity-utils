# Solidty-Proxy-Tutorial

This is a tutorial on how to create a proxy contract in Solidity. The tutorial is based on the [using-foundry-to-explore-upgradeable-contracts-part-1](https://runtimeverification.com/blog/using-foundry-to-explore-upgradeable-contracts-part-1/) blog post by Runtime Verification.


---

## Getting Started

If you don't have forge installed:

1. `curl -L https://foundry.paradigm.xyz | bash`
2. `foundryup`
3. `brew install libusb`
4. then forge should be intalled

```
git clone https://github.com/rhcproc/forge-openzeppelin
cd forge-openzeppelin
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

Test code is in 'test/Proxy.t.sol'. We can check the test code to see how the proxy contract is being tested.

```solidity
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
```



---

## Resources
- [https://runtimeverification.com/blog/using-foundry-to-explore-upgradeable-contracts-part-1/](https://runtimeverification.com/blog/using-foundry-to-explore-upgradeable-contracts-part-1/)
- [https://fravoll.github.io/solidity-patterns/proxy_delegate.html](https://fravoll.github.io/solidity-patterns/proxy_delegate.html)

 
### CI with Github Actions

Automatically run linting and tests on pull requests.

### Default Configuration

Including `.gitignore`, `.vscode`, `remappings.txt`


