// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

contract BasicErc20v2 is Initializable, ERC20Upgradeable {
    string public memo;
    string public memo2;

    function initialize(string memory name, string memory symbol) public initializer {
        __ERC20_init(name, symbol);
        _mint(msg.sender,1000000000000 * 1e18);
        memo = "memo";
        memo2 = "memo2";
    }

    function swapTwoMemo() public {
        string memory tmp = memo;
        memo = memo2;
        memo2 = tmp;
    }
}
