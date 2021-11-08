# CreateERC20
  
This repo is the Vyper version of the [ERC20](https://github.com/PatrickAlphaC/erc20-brownie-py) from [Patrick Collins](https://github.com/PatrickAlphaC).


# Important note

The ```NAME```, ```TICKER```, ```DECIMALS``` have been hardcoded in the ERC20.vy contract, we can also passing this argument in the ```def __init__``` function, and so these arguments will be pass within the deployToken.py instead being the ERC.vy contract.

You have to create your own .env file containing : 
```
export PRIVATE_KEY="YOUR_PRIVATE_KEY"
export WEB3_INFURA_PROJECT_ID="YOUR_INFURA_ID"
```

This code is mainly designed to be deployed on the Kovan testnet
