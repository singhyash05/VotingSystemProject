// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <=0.9.0;

contract Votting{
    address private electionOfficer=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // address of Contract Deployer 
    address public can1=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; //Address of Candidate 1
    uint[] private candi1; 

    address public can2=0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db; //Address of Candidate 2
    uint[] private  candi2;

    address[] public voters;
    constructor(){
        electionOfficer=msg.sender; //Election officer can deploy contract only
    }

    mapping (address=>bool) private hasVoted;

    function vote(uint EnterCandidateNumber) public {

        require(hasVoted[msg.sender]==false);//require that he hasnt voted yet;
        require(block.timestamp <= 1710843232); //UNIX timestamp when voting ends
        require(EnterCandidateNumber == 1 || EnterCandidateNumber == 2, "Invalid candidate number");
        if(EnterCandidateNumber==1){
            candi1.push(1);
        }
        else if(EnterCandidateNumber==2){
            candi2.push(1);
        }

        hasVoted[msg.sender]=true; // means now he is marked as voted
        

        }
    
    function results() public view  returns(string memory){
        require(block.timestamp >= 1710843232); //After this UNIX timestamp results will show
        if(candi1.length>candi2.length){
            
            return "winner is candidate 1" ;

        }
        else if(candi1.length<candi2.length){
            return "winner is candidate 2";
            
        }
        else{
            return "its a tie";
        }
    }

}