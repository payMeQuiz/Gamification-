// contracts/TokenVesting.sol
// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.9;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

import "../ico/PaymeTokenVesting.sol";

/**
 * @title MockToken1Vesting
 * WARNING: use only for testing and debugging purpose
 */
contract MockTokenVesting is PaymeTokenVesting{

    uint256 mockTime;

    // constructor(IERC20 token_,uint256 TGEPercent_,uint256 TGEOpeningTime_) PaymeTokenVesting(token_,TGEPercent_,TGEOpeningTime_){
    // }

    function setCurrentTime(uint256 _time)
        external{
        mockTime = _time;
    }

    function getCurrentTime()
        public 
        virtual
        override
        view
        returns(uint256){
        return mockTime;
    }
}