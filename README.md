# Project: Create and Mint Token

In this project, we will create an ERC20 smart contract using the "Solidity" programming language. The purpose of this project is to serve as a starting point for beginners who want to learn about creating ERC20 smart contracts, minting tokens, and understanding how to access other functions within a smart contract.

## Getting Started

## Description and Execution

For this project, we will be using Remix - Ethereum IDE Web browser. Here is the URL: https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.18+commit.87f61d96.js

In this project, we are going to use MetaMask. Here is the URL for download and installation: https://metamask.io/download/

To set up MetaMask, you will need to create an account and a password. After that, copy your account address and visit this website -> https://core.app/tools/testnet-faucet/?subnet=c&token=c. Inside the address box, paste your account address, then click on "Request 2 AVAX" option to receive 2 AVAX for testing purposes.

You need to perform two more steps:-

    Click on the "Add Subnet to Wallet" button. This will automatically add the network of the Fuji testnet of AVAX to your MetaMask.
    Go to the Remix - Ethereum IDE Web browser, ensure you have pasted the code from the Solidity code. Then, open MetaMask from that tab, click on the three dots near the account address, select "Manually connect to current site," choose the default account address, and click "Connect." This will connect you to Remix. Before doing this, ensure that in the Remix - Ethereum IDE Web browser, in the Deploy & Run Transactions box, you have selected "Injected Provider - MetaMask" as the environment for successful connection. You will see a string "Custom (43113) network" near the Injected Provider, which means you are successfully connected!

Now let's Deploy our ERC20 smart contract on SnowTrace. Here is the URL: https://testnet.snowtrace.io/. On the top of the box, you will see a "Testnet" option in red color. Click on that and choose "Avalanche Fuji Testnet."

In the Remix - Ethereum IDE Web browser, make sure you deploy the smart contract and copy the deployed contract address. Then, go back to the SnowTrace website. Inside the website, you will see "Avalanche C-Chain Testnet Explorer" down below the box. Paste the address adn then click on the search icon then there you can view all the details. Go back to the smart contract, try the functions, and activate them. It will ask for confirmation. Confirm the transaction for successful execution. Then, refresh the SnowTrace website to view the details.

Now let's Verify our ERC20 smart contract!

First, in the Remix - Ethereum IDE Web browser, choose the contract you copied the code from and used for deployment. Right-click and choose the "Flatten" option. This will create a smart contract by the name "flatten." Open that contract and copy the whole code (or use control + a). Go back to the Snow Trace website, click on the "Contract" option, then click on "Verify your smart contract" if you are the owner. Follow the instructions and in the "Contract Source Code" box, provide the full code of the smart contract you copied earlier from the flatten contract. Then, after completing all the steps, click on the "I am not a Robot" option. It will verify your smart contract, which may take a couple of minutes. Once done, your smart contract will be successfully verified!


```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }
}
```

## Authors

Reahbar 
[@metacraftersio](https://twitter.com/metacraftersio)](https://github.com/Reahbar)](https://github.com/Reahbar)


## License

This project is licensed under the MIT License.
