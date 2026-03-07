// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFT2 is ERC721, Ownable {
    using Strings for uint256;

    string public baseURI =
        "ipfs://bafkreih5rtjcgz45nuhkz2fctxdsp4o5rgkqrywrtgpux5vutwr54sze5q";

    uint256 private _idCounter;
    uint256 public MAX_SUPPLY;

    error TokenNotFound();
    error MaxSupplyReached();

    constructor(
        string memory name_,
        string memory symbol_,
        uint256 maxSupply_
    ) ERC721(name_, symbol_) Ownable(msg.sender) {
        MAX_SUPPLY = maxSupply_;
    }

    function mint() external {
        if (_idCounter >= MAX_SUPPLY) revert MaxSupplyReached();

        _idCounter++;
        _safeMint(msg.sender, _idCounter);
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        ownerOf(tokenId); // reverts if token doesn't exist

        return string(abi.encodePacked(baseURI, tokenId.toString(), ".json"));
    }
}
