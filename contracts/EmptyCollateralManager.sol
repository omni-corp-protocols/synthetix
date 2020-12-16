pragma solidity ^0.5.16;

import "./interfaces/ICollateralManager.sol";

contract EmptyCollateralManager is ICollateralManager {
    // Manager information
    function hasCollateral(address) external view returns (bool) { return false; }

    function hasSynth(address) external view returns (bool) { return false; }

    function getLiquidationPenalty() external view returns (uint liquidationPenalty) { return 0; }

    // State information
    function long(bytes32) external view returns (uint amount) { return 0; }

    function short(bytes32) external view returns (uint amount) { return 0; }

    function totalLong() external view returns (uint debt, bool anyRateIsInvalid) { return (0, false); }

    function totalShort() external view returns (uint short, bool anyRateIsInvalid) { return (0, false); }

    function getBorrowRate() external view returns (uint scaledUtilisation) { return 0; }

    function getRatesAndTime(uint) external view returns (uint entryRate, uint lastRate, uint lastUpdated, uint newIndex) { return (0, 0, 0, 0); }

    function getShortRatesAndTime(bytes32, uint) external view returns (uint entryRate, uint lastRate, uint lastUpdated, uint newIndex) { return (0, 0, 0, 0); }

    function getShortRate(address) external view returns (uint shortRate) { return 0; }

    // Manager mutative
    function addCollateral(address) external {}

    function addSynth(address) external {}

    function addShortableSynth(address) external {}

    // State mutative
    function incrementLongs(bytes32, uint) external {}

    function decrementLongs(bytes32, uint) external {}

    function incrementShorts(bytes32, uint) external {}

    function decrementShorts(bytes32, uint) external {}

    function updateBorrowRates(uint) external {}

    function updateShortRates(bytes32, uint) external {}

    function exceedsDebtLimit(uint, bytes32) external view returns (bool canIssue) { return false; }
}