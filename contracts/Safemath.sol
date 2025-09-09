// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeMath {
    uint8 public bigNumber = 255;
    uint8 public bigNumber2 = 255;

    function add() public {
        bigNumber = bigNumber + 1;
        unchecked {bigNumber2 = bigNumber + 1;} // same as version < 0.8.0 with unchecked its get more gas efficient
    }
    // if solidity version will be < 0.8.0 
    // transaction will complete on clicking add function btn
    // result will 0 on clicking bigNumber btn

    // if solidity version will be >= 0.8.0 
    // we will get trx failed massage on clicking add function btn
    // result will 255 on clicking bigNumber btn
}