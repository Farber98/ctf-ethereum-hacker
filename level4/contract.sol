// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract PriceUpdater {
    address cbdc = 0x094251c982cb00B1b1E1707D61553E304289D4D8;

    function updatePrice() public {
        cbdc.call(abi.encodeWithSignature("addOracle(string)", "bank"));

        uint256 blockNumber = block.number - 1;
        bytes32 blockHash = blockhash(blockNumber);
        cbdc.call(
            abi.encodeWithSignature(
                "updatePrice(bytes32,uint256)",
                blockHash,
                880
            )
        );
    }
}
