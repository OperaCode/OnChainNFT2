// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {NFT2} from "../src/NFT2.sol";

contract NFT2Script is Script {
    NFT2 public nft;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        nft = new NFT2();

        vm.stopBroadcast();
    }
}
