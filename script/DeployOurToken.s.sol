// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployOurToken is Script {
    uint256 public constant INITIA_SUPPLY = 1000 ether;

    function run() public returns (OurToken) {
        vm.startBroadcast();
        OurToken Ot = new OurToken(INITIA_SUPPLY);
        vm.stopBroadcast();
        return Ot;
    }
}
