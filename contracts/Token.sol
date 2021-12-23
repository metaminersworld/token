
   
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MMWToken is ERC20, Ownable{
    
    constructor() ERC20("MMW", "MetaminersWorld") {
    }

    function mint(uint256 amount) public onlyOwner {
        require(totalSupply() < 10 ** 28, 'no Mint');
        _mint(msg.sender, amount);
    }
}