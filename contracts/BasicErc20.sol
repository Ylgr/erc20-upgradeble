// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
//import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
//import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";

contract BasicErc20 is Initializable, ERC20Upgradeable {
//    string private _name;
//    string private _symbol;
//    uint8 private _decimals;

    string public memo;

    function initialize(string memory name, string memory symbol) public initializer {
        __ERC20_init(name, symbol);
        _mint(msg.sender,1000000000000 * 1e18);
        memo = name;
    }

//
//    function __ERC20_init_unchained(string memory name, string memory symbol) internal initializer {
//        _name = name;
//        _symbol = symbol;
//        _decimals = 18;
//    }
}
