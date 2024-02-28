// SPDX-License-Identifier: MIT
pragma solidity 0.6.7;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";


contract PriceConsumerV3 {
    AggregatorV3Interface public priceFeed;

    constructor() public {
        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }

    function latestRoundData() public view returns (int) {
        (,int price,,,) 
            = priceFeed.latestRoundData();
        return price;
    }
}
