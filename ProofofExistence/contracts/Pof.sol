// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ProofofExistence {

    constructor() {
        
    }
    
    mapping (bytes32 => bool) private proofs;

    function storeProof(bytes32 proof) private  {
        proofs[proof]=true;
    }

    function notarize(string memory document) public {
        storeProof(proofFor(document));
    }

    function proofFor(string memory document) private pure returns (bytes32){
        return sha256(bytes(document));
    }

    function checkDocument(string memory document) public view returns (bool){
        return proofs[proofFor(document)];
    }


}