# Swisstronic Testnet Technical Task 2 Mint ERC20 Token

## Claim Faucet First https://faucet.testnet.swisstronik.com/

### **NOTE: USE NEW WALLET OR TAKE YOUR OWN RISK**
## Steps

### 1. Clone Repository

```bash
git clone https://github.com/lordvein/swisstronic-mint-erc20-token.git
```

```
cd swisstronic-mint-erc20-token
```

### 2. Install Dependency

```bash
npm install
```

### 3. Set .env File

create .env file in root project

```bash
PRIVATE_KEY="your private key"
```

### 4. Create Smart Contract

- Open contract folder
- Create Token.sol file
- Copy this code and paste there
- Feel free to modify token name and token symbol

```
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
```

### 5. Compile Smart Contract

```bash
npm run compile
```

### 6. Deploy Smart Contract

```bash
npm run deploy
```

### 7. Mint Token

```bash
npm run mint
```

### 8. Check Supply

```bash
npm run check-supply
```

### 9. Check Balance

```bash
npm run balance-of
```

### 10. Tranfer Token

```bash
npm run transfer
```

### 11. Finsihed

- Open the deployed-adddress.ts (location in utils folder)
- Copy the address and paste the address in testnet dashboard
- push this project to your github and paste your repository link in testnet dashboard

Thanks to :
Izzy Cracker (https://github.com/Mnuralim)
