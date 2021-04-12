// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Election {
    constructor() {
        addCandidate("Daiki Fujii");
        addCandidate("Rokurouman Mitsuki");
    }

    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    mapping(uint256 => Candidate) public candidates;

    uint256 public candidatesCount;

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint256 _id) public {
        candidates[_id].voteCount++;
    }
}
