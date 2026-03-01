// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract NFT2 is ERC721,Ownable {
    using Strings for uint256;
    uint256 private _IdCounter;
    uint256 public MAX_SUPPLY;

    error TokenNotFound();
    error MaxSupplyReached();

constructor(string memory _name , string memory _symbol, uint256 _maxSupply) ERC721(_name, _symbol) {

    if(tokenId >= _MAX_SUPPLY)revert
    MAX_SUPPLY = _maxSupply;

}







}
