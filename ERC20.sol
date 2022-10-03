// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Imports the ERC20 Token standard from Open Zeppelin
// OZ is an Ethereum security company
// Among other things, OZ develops reference contracts for popular smart contract standards which are thoroughly tested and secure
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Specifies a new contract in our Solidity file names BigSmithETHToken
// Also contract is an instance of the ERC20 we imported from Open Zeppelin
contract BigSmithETHToken is ERC20 {
    // Constructor function called when contract is first deployed
    // Withing this constructor we take two arguments from users -> _name and _smybol
    // Immediately after specifying the constructor we call ERC20 parsing through _name and _symbol
    // This initializes the ERC20 smart contract
    constructor (string memory _name, string memory _smybol) ERC20(_name, _smybol) {
        //_mint is an internal function within the ERC20 standard contract, which means that it can only be called by the contract itself
        // External users cannot call this function.
        // _mint takes in two arguments -> An address to mint to and an amount of tokens to mint
        _mint(msg.sender, 69 * 10 ** 18);
        // msg.sender is a global variable injected by the Ethereum Virtual Machine, which is the address which made this transaction
        // Since we are the ones deploying this contract, our address will be there in msg.sender
    }
}