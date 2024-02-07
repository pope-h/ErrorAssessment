# Error Assessment

This Solidity program is a simple program on require, revert and assert that demonstrates the basic syntax and functionality of the Solidity programming language.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three functions that tests the assert, require and revert functionalitries and returns a secret string if successful.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorAssessment.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract ErrorAssessment {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function requireTest() public view returns (string memory) {
        require(owner == msg.sender, "Not Owner");
        string memory secret = "Yaaaah you found me through require";
        return secret;
    }

    function assertTest() public view returns (string memory) {
        assert(owner == msg.sender);
        string memory secret = "Yaaaah you found me through assert";
        return secret;
    }

    function revertTest() public view returns (string memory) {
        if (owner != msg.sender) revert("Not Owner");
        string memory secret = "Yaaaah you found me through revert";
        return secret;
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorAssessment" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling any of the  functions.

## Authors

Ekarika Nsemeke


## License

This project is licensed under the MIT License - see the LICENSE.md file for details