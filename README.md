# VotingSystemProject
This repository contains the source code for a secure and decentralized voting system built using Solidity, a smart contract programming language for the Ethereum blockchain.

GDSC PROJECT - BLOCKCHAIN - VOTING SYSTEM

Instructions for Use (Steps to Run Project):
1. Download voting.sol from GitHub folder and then import it into your Ethereum Development Environment such as Remix IDE.
2. In the code there are some Addresses like that of ElectionOfficer and Candidates. Replace the address of ElectionOfficer from which address you are going to deploy.
3. Change block timestamp in vote and result option in UNIX format according to your voting duration and after which time voting will end and results function will work.
3. After deployment you will see can1 (means Candidate 1) and similarly can2 which will show address of them. Then in vote function input 1 for can1 and 2 for can2.
4. You can't vote same candidate again and vote multiple candidates.

--> If you want to deploy contract on a test network like the Sepolia testnet, add your metamask wallet extension through your web browser and in Remix IDE change environment to "Injected Provider MetaMask" and in code change ElectionOfficer Address to your MetaMask wallet address then select testnetwork and deploy.

Key Features of Voting Project :

1.Secure:  Utilizes the security and transparency of blockchain technology to ensure the integrity of the voting process.

2.Decentralized: No central authority; fair elections.

3.Immutable: Votes cannot be altered.

4.User-Friendly: Easy interface for voters.

Tech Stacks Used :
1. Remix IDE
2. Metamask
3. Solidity

