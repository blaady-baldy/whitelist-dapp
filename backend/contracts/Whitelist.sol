//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;
    uint8 public numAddressesWhitelisted;
    mapping(address => bool) whitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses){
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender],"Address already whitelisted");
        require(numAddressesWhitelisted<maxWhitelistedAddresses,"More addresses cannot be added");

        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted+=1;
    }
}