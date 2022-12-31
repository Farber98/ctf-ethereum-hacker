// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Whale {
    function checkBalance() public view returns (uint256) {
        return
            IERC721(0x484Ec30Feff505b545Ed7b905bc25a6a40589181).balanceOf(
                0x123e710c69b6806ef32Cf52e49dCC5EEEc368a22
            );
    }
}
