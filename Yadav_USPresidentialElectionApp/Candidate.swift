//
//  Candidate.swift
//  Yadav_USPresidentialElectionApp
//@Author: s525138
// Device: iphone 6S Plus
//  Created by Yadav,Shalu on 2/23/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import Foundation


class Candidate{
    var name:String
    var image:String
    var numberOfVotesRecieved:Int32
    
    init(name:String, image:String, numberOfVotesRecieved:Int32){
        self.name = name
        self.image = image
        self.numberOfVotesRecieved = numberOfVotesRecieved
    }
}