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

    constructor() VRFConsumerBase(vrfCoordinator, linkToken) public{
        keyHash = 0x474e34a077df58807dbe9c96d3c009b23b3c6d0cce433e59bbf5b34f823bc56c;
        fee = 100000000000000000;
    }

    function getRandomNumber() public returns (bytes32 requestId) {
        return requestRandomness(keyHash, fee);
    }

    function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {
        randomResult = randomness;
    }
}
