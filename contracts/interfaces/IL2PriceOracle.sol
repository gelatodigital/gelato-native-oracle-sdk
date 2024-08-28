// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import {PythStructs} from "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";

interface IL2PriceOracle {
    function getPriceUnsafe(
        bytes32 id
    ) external view returns (PythStructs.Price memory);

    function getPriceNoOlderThan(
        bytes32 id,
        uint256 age
    ) external view returns (PythStructs.Price memory);
}
