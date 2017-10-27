pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract KarKat is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function KarKat(address _owner)  UpgradeableToken(_owner) {
    name = "KarKat";
    symbol = "KK";
    totalSupply = 888888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    decimals = 100;

    balances[_owner] = totalSupply;
  }
}