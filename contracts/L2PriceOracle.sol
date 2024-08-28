// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import {PythStructs} from "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";
import {IL2PriceOracle} from "./interfaces/IL2PriceOracle.sol";
import {Addresses} from "./constants/Addresses.sol";

abstract contract L2PriceOracle {
    function _getPriceUnsafe(
        bytes32 id
    ) internal view returns (PythStructs.Price memory) {
        return IL2PriceOracle(Addresses._L2_PRICE_ORACLE).getPriceUnsafe(id);
    }

    function _getPriceNoOlderThan(
        bytes32 id,
        uint256 age
    ) internal view returns (PythStructs.Price memory) {
        return
            IL2PriceOracle(Addresses._L2_PRICE_ORACLE).getPriceNoOlderThan(
                id,
                age
            );
    }
}
