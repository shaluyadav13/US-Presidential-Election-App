//
//  Party.swift
//  Yadav_USPresidentialElectionApp
//@Author: s525138
// Device: iphone 6S Plus
//  Created by Yadav,Shalu on 2/23/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import Foundation

class Party {
    var partyName:String
    
    var candidateDict:[String:Candidate]
    
    init(partyName:String,candidateDict:[String:Candidate] ){
        self.partyName = partyName
        self.candidateDict = candidateDict
    }
    
    // will display the candiadtes in ascending order ie. candidate with most dates will be at top in each section.
    func displayOrder()->[Candidate]{
        var sortedList:[Candidate]=[]
        for cand:Candidate in candidateDict.values{
            sortedList.append(cand)
        }
        let sortedDict = sortedList.sort({(str0:Candidate,str1:Candidate)->Bool in return str0.numberOfVotesRecieved > str1.numberOfVotesRecieved})
        return sortedDict
    }
    
    // will return the percentage of votes a candidate recieved in that section.
    func getPercentage(name:String,vote:Int32)->Double {
        
        var totalVotes:Int32 = 0
        for value in candidateDict.values {
            totalVotes += value.numberOfVotesRecieved
        }
        if totalVotes == 0 {
            return 0
        }
        else
        {
            return (Double(vote) * 100.00/Double(totalVotes))
        }
    }
    
    // will update the number of votes for candidate
    func updateVote(name:String){
        var votes = (candidateDict[name]?.numberOfVotesRecieved)! as Int32
        votes += 1
        candidateDict[name]?.numberOfVotesRecieved = votes
    }
    
    // use to add the candidates to the dictionary
    func addCandidate(candidate:Candidate){
        candidateDict[candidate.name] = candidate
    }
}