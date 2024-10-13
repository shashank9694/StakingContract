// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BLS is ERC20 {
    constructor() ERC20("Blume Token", "BLS") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}

contract StakedBLS is ERC20 {
    constructor() ERC20("Staked Blume Token", "stBLS") {}

    // Mint function restricted to the staking contract
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    // Burn function restricted to the staking contract
    function burn(address from, uint256 amount) external {
        _burn(from, amount);
    }
}

contract BlumeStaking {
    IERC20 public blsToken;
    StakedBLS public stakedBlsToken;

    constructor(IERC20 _blsToken, StakedBLS _stakedBlsToken) {
        blsToken = _blsToken;
        stakedBlsToken = _stakedBlsToken;
    }

    function stake(uint256 amount) external {
        require(blsToken.transferFrom(msg.sender, address(this), amount), "Transfer failed");
        stakedBlsToken.mint(msg.sender, amount);
    }

    function unstake(uint256 amount) external {
        stakedBlsToken.burn(msg.sender, amount);
        require(blsToken.transfer(msg.sender, amount), "Transfer failed");
    }
}
