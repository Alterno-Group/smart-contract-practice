// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SandBlockNFT is ERC721 {
    uint256 private _tokenIdCounter;

    constructor() ERC721("Solar Test 1", "ST1") {}

    function mint(address to) public {
        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter++;
        _mint(to, tokenId);
    }

    function totalSupply() public view returns (uint256) {
        return _tokenIdCounter;
    }
}
