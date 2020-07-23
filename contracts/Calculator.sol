// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/math/SafeMath.sol";

contract Calculator {
  // https://itnext.io/libraries-and-using-for-in-solidity-5c954da04128
  using SafeMath for uint256;
  uint256 c;

  function add(uint256 a, uint256 b) public {
    c = a.add(b);
  }

  function sub(uint256 a, uint256 b) public {
    c = a.sub(b);
  }

  function mul(uint256 a, uint256 b) public {
    c = a.mul(b);
  }

  function div(uint256 a, uint256 b) public {
    c = a.div(b);
  }

  function result() public view returns (uint256) {
    return c;
  }
}
