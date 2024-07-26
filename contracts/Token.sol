// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20 {
    constructor()ERC20("TOKEN_NAME","TOKEN_SYM"){}  // Choose your own token name and symbol 

    function mint10000tokens() public {
        _mint(msg.sender,10000*10**18);
    }

    function burn1000tokens() public{
        _burn(msg.sender,1000*10**18);
    }

}
