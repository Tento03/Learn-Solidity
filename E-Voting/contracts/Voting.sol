// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping {
   address public admin;

   constructor() {
    admin=msg.sender;
   }

   struct Candidate{
    string name;
    uint voteCount;
   }

   mapping (uint=>Candidate) public candidates;
   uint public candidateCount;

   mapping (address =>bool) public hasVoted;

   function addCandidate(string memory name)public  {
    require(msg.sender==admin,"Hanya admin yg bisa nambah kandidat");

    candidates[candidateCount]=Candidate(name,0);
    candidateCount++;
   }

   function vote(uint candidateId)public {
    require(!hasVoted[msg.sender],'kamu udah vote');
    require(candidateId < candidateCount, 'ga valid');

    candidates[candidateId].voteCount++;
    hasVoted[msg.sender]=true;
   }

   function getCandidate(uint candidateId)public view returns(string memory,uint) {
    require(candidateId<candidateCount, 'ga valid');
    Candidate memory c=candidates[candidateId];
    return (c.name,c.voteCount);
   }
}