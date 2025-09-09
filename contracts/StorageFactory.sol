// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    // uint256 public favoriteNumber
    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public  {
        // new : used to generate contract
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface (tecnicaly a lie, you just need the function selector)
        // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        // mySimpleStorage.store(_newSimpleStorageNumber);
        // short
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256)   {
        // SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        // return mySimpleStorage.retrieve();
        // short
        return  listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}