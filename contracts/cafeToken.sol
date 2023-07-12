// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract cafeToken is ERC20{

    // CT(CafeToken)
    constructor() ERC20(CafeToken,CT) {        
    }

    function mint(address to, uint256 _amount){
        _safeMint(to, _amount);
    }
}
