// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.8.3/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.8.3/access/Ownable.sol";

contract Degen is ERC20, ERC20Burnable, Ownable {
    string public store_items; 
    constructor() ERC20("Degen", "DGN") {
        store_items="The following items are avaliable: 1. Degen Hoodie , 2. Degen Cap, 3. Degen Bottle";
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function redeemTokens(uint256 amount) public {
        require(amount <= 3, "Only 3 items are available in our shop");
        _burn(msg.sender, amount*500);
}
}

