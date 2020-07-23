// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract TennisMatch {
  address public owner;

  uint8 public playerAScore;
  uint8 public playerAGamesWon;

  uint8 public playerBScore;
  uint8 public playerBGamesWon;

  constructor() public {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Must be owner");
    _;
  }

  function addPoint(uint8 player) public onlyOwner {
    require(player <= 1, "Invalid Player");
    uint8 newScore;

    if (player == 0) {
      playerAScore += 15;
      newScore = playerAScore;
    } else {
      playerBScore += 15;
      newScore = playerBScore;
    }

    _maybeIncrementGame(player, newScore);
  }

  function _maybeIncrementGame(uint8 player, uint8 newScore) private {
    if (player == 0 && newScore > 50) {
      playerAGamesWon++;
      _resetScore();
    } else if (player == 1 && newScore > 50) {
      playerBGamesWon++;
      _resetScore();
    }
  }

  function _resetScore() private {
    playerAScore = 0;
    playerBScore = 0;
  }

  function _resetGame() private {
    playerAGamesWon = 0;
    playerBGamesWon = 0;
    _resetScore();
  }
}
