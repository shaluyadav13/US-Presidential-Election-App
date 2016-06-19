//
//  PollFactory.swift
//  Yadav_USPresidentialElectionApp
//@Author: s525138
// Device: iphone 6S Plus
//  Created by Yadav,Shalu on 2/23/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import Foundation

class PollFactory {
    
    static var parties:[Party]=[]
    static func createModel(){
        
        let party1:Party = Party(partyName: "Democratic", candidateDict: ["Clinton":Candidate(name:"Clinton",image:"clinton-2016.jpg",numberOfVotesRecieved:0)])
        let party2:Party = Party(partyName: "Republican", candidateDict: ["Carson":Candidate(name: "Carson", image: "bencarson.jpg", numberOfVotesRecieved: 0)])
        
        party1.addCandidate(Candidate(name: "Sanders", image: "berniesanders.jpg", numberOfVotesRecieved: 0))
        
        party2.addCandidate(Candidate(name: "Cruz", image: "TedCruz.jpg", numberOfVotesRecieved: 0))
        party2.addCandidate(Candidate(name: "Kasich", image: "kasich16.jpg", numberOfVotesRecieved: 0))
        party2.addCandidate(Candidate(name: "Carson", image: "bencarson.jpg", numberOfVotesRecieved: 0))
        party2.addCandidate(Candidate(name: "Trump", image: "trump.jpg", numberOfVotesRecieved: 0))
        party2.addCandidate(Candidate(name: "Macro Rubio", image: "MarcoRubio.jpg", numberOfVotesRecieved: 0))
        
        parties.append(party1)
        parties.append(party2)
    }
}