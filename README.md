## Blume Liquid Staking Documentation

### Overview:
The **Blume Liquid Staking** platform allows users to stake the BLS cryptocurrency and receive staked BLS tokens (stBLS) in return. The core of this system involves three contracts:
- **BLS Token Contract**
- **stBLS Token Contract**
- **Staking Contract**

Users interact with the platform by staking their BLS tokens, receiving an equivalent amount of stBLS tokens, and the smart contract ensures the proper minting, staking, and rewards distribution.

---

### Smart Contract Addresses:
- **BLS Token Contract**: [0x675188C512a90e4170bB2872b2d8e7791f86936F](https://sepolia.etherscan.io/address/0x675188c512a90e4170bb2872b2d8e7791f86936f)
- **stBLS Token Contract**: [0x35684A68D755b2Bcf3C9789A0c247e457c229Dee](https://sepolia.etherscan.io/address/0x675188c512a90e4170bb2872b2d8e7791f86936f)
- **Staking Contract**: [0x4476757877664ECEa9B0e49c0ee045f464844d6C](https://sepolia.etherscan.io/address/0x4476757877664ecea9b0e49c0ee045f464844d6c)

---

### Flow of Operations:

1. **BLS Token Acquisition**:
   - Users must first acquire **BLS tokens**.

2. **Approve Staking Contract**:
   - The BLS token holder must approve the staking contract to spend their tokens using the `approve` function from the BLS contract.
   - Example:
     ```solidity
     function approve(address _spender, uint256 _amount) external returns (bool);
     ```
   - The spender in this case is the **Staking Contract**.

3. **Staking BLS**:
   - Once approval is granted, users can stake their BLS tokens in the staking contract.
   - During the staking process, stBLS tokens are minted in a 1:1 ratio to the staked BLS amount.
   - Example Stake Function:
     ```solidity
     function stake(uint256 _amount) external;
     ```

4. **Minting of stBLS**:
   - For each staked BLS token, the user receives an equivalent amount of stBLS tokens.
   - stBLS tokens act as a receipt representing the staked BLS.

---

### Etherscan Verification:
Each of the deployed contracts has been verified on Etherscan for transparency and authenticity. Below are the links to the Etherscan verifications:
- [BLS Token Contract Verification](https://sepolia.etherscan.io/address/0x675188c512a90e4170bb2872b2d8e7791f86936f)
- [stBLS Token Contract Verification](https://sepolia.etherscan.io/address/0x35684A68D755b2Bcf3C9789A0c247e457c229Dee)
- [Staking Contract Verification](https://sepolia.etherscan.io/address/0x4476757877664ecea9b0e49c0ee045f464844d6c)

---

### Key Functions Explained:

1. **approve()**:
   - Allows the staking contract to handle the user's BLS tokens.

2. **stake()**:
   - The primary staking function where users transfer BLS to the staking contract and in return receive stBLS.

3. **mint()**:
   - A part of the stBLS contract, it mints stBLS tokens for the user once the staking is confirmed.

---

### Deployment Information:
The contracts were deployed on the **Sepolia Testnet**. The testnet provides an Ethereum-like environment for testing purposes.

---

### Conclusion:
This documentation outlines the staking flow and explains how users can interact with the Blume Liquid Staking platform. With verified smart contracts and an easy-to-understand flow, this system provides a straightforward mechanism for staking BLS and receiving stBLS in return.

