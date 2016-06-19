//
//  ViewController.swift
//  Yadav_USPresidentialElectionApp
//@Author: s525138
// Device: iphone 6S Plus
//  Created by Yadav,Shalu on 2/23/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    let pollFactory:PollFactory  = PollFactory()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PollFactory.createModel()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //@IBOutlet weak var  tblViewData:UITableView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return PollFactory.parties.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return PollFactory.parties[section].partyName
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PollFactory.parties[section].candidateDict.values.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var candObject:[Candidate]=PollFactory.parties[indexPath.section].displayOrder()
        
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        tableView.rowHeight = 108
        let candidateIV:UIImageView = cell.viewWithTag(100) as! UIImageView
        let nameLBL:UILabel = cell.viewWithTag(200) as! UILabel
        let voteLBL:UILabel = cell.viewWithTag(300) as! UILabel
        
        nameLBL.text = candObject[indexPath.row].name
        let img:String = candObject[indexPath.row].image
        candidateIV.image = UIImage(named: img)
        
        voteLBL.text = String(format:"%.2f",PollFactory.parties[indexPath.section].getPercentage(candObject[indexPath.row].name,vote: candObject[indexPath.row].numberOfVotesRecieved))
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var candObject:[Candidate]=[]
        for cand:Candidate in PollFactory.parties[indexPath.section].candidateDict.values{
            candObject.append(cand)
        }
        let object = PollFactory.parties[indexPath.section].displayOrder()[indexPath.row]
        
        PollFactory.parties[indexPath.section].updateVote(object.name)
        tableView.reloadData()
        
    }
    
}

