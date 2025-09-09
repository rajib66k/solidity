// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

// every thing inherited to AddFiveStorage contract from SimpleStorage contract
contract AddFiveStorage is SimpleStorage {       // add AddFiveStorage contract is a child contract of SimpleStorage contract
    function sayHello() public pure returns (string memory) {
        return  "hello world!";
    }
    
    function store(uint256 _newNumber) public override {   // override and function which getting override also to add virtual in SimpleStorage contract
       myFavoriteNumber = _newNumber + 5;
    }
}