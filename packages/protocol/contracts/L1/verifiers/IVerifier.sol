// SPDX-License-Identifier: MIT
//  _____     _ _         _         _
// |_   _|_ _(_) |_____  | |   __ _| |__ ___
//   | |/ _` | | / / _ \ | |__/ _` | '_ (_-<
//   |_|\__,_|_|_\_\___/ |____\__,_|_.__/__/

pragma solidity ^0.8.20;

import { TaikoData } from "../TaikoData.sol";

/// @title IVerifier Interface
/// @notice Defines the function that handles proof verification.
interface IVerifier {
    /// @notice Verify a proof
    function verifyProof(
        uint64 blockId,
        address prover,
        bool isContesting,
        TaikoData.BlockEvidence memory evidence
    )
        external;

    /// @notice Handle notification when a verified proof is contested and
    /// failed.
    function handleLostContestation(
        uint64 blockId,
        address prover,
        bytes32 blockHash
    )
        external;
}