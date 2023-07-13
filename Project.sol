// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    string[] public ShowItems;

    constructor() ERC20("Degen", "DGN") {
            ShowItems.push("Offical INR NFT");
            ShowItems.push("Offical INR Gen2 NFT");
            ShowItems.push("Random Reward!"); 
    }

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
          
    }

       function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    
    function purchase(uint256 productIndex) public {
        require(productIndex >= 0 && productIndex < ShowItems.length, "Invalid Product Index!");
        uint256 price = calculatePrice(productIndex);

        transferFrom(msg.sender, owner(), price);
    }

    function calculatePrice(uint256 productIndex) private pure returns (uint256) {
        uint256[] memory prices = new uint256[](3);
        prices[0] = 100;  
        prices[1] = 200;  
        prices[2] = 300;   

        return prices[productIndex];
    }
}
