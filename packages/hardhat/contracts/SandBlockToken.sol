// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SandBlockToken is ERC20 {
    constructor() ERC20("SandBlock Token Test 1", "SAND1") {
        _mint(msg.sender, 21000000 * 10**decimals());
    }
}
