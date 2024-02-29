// SPDX-License-Identifier: MIT
pragma solidity 0.6.7;

import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract VRFConsumer is VRFConsumerBase{

    /// @dev Network: Sepolia
    address public constant vrfCoordinator = 0x8103B0A8A00be2DDC778e6e7eaa21791Cd364625;
    address public constant linkToken = 0x779877A7B0D9E8603169DdbD7836e478b4624789;

    bytes32 keyHash;
    uint fee;
    uint randomResult;
}
