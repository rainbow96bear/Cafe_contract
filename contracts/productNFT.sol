// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CafeNFT is ERC721{

    uint256 public TokenID = 0;

    // coffee의 경우 name은 BlockChainCafe, symbol은 BCC(BlockChainCafe)이고 NFT는 기프티콘 형식을 예상하고 있습니다.
    // goods 등록 시 goods의 이름을 NFT의 이름으로 하고 symbol은 따로 정하는 방식
    // coffee를 결제 시 포인트를 모으는 것 처럼 token이 airdrop되고 token을 이용하여 coffee 기프티콘 혹은 goods를 구매 가능
    constructor(string memory name, string memory symbol) ERC721(name,symbol) {        
    }

    // mint는 관리자만 가능하도록 require 혹은 onlyowner modifier 사용
    function mint(address to, string memory url){
        _safeMint(to, TokenID);
        _setTokenURI(TokenID, uri);
        TokenID++;
    }
}
