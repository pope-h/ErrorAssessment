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