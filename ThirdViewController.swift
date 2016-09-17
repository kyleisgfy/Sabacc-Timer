//
//  ThirdViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/11/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
        //Buttons
    @IBOutlet weak var resetButton: UILabel!
    
    
    //Labels
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    var labelArray : [UILabel] = []
    
    
    @IBOutlet weak var labelOneModifier: UILabel!
    @IBOutlet weak var labelTwoModifier: UILabel!
    @IBOutlet weak var labelThreeModifier: UILabel!
    @IBOutlet weak var labelFourModifier: UILabel!
    @IBOutlet weak var labelFiveModifier: UILabel!
    @IBOutlet weak var labelSixModifier: UILabel!

    //View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print ("view3DidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
       print("view3WillAppear")
    }
    
    override func viewWillLayoutSubviews() {
      print("view3WillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print ("view3DidLayoutSubviews")
        super.viewDidLayoutSubviews()
//        self.labelOne.alpha = 0
//        self.labelTwo.alpha = 0
//        self.labelThree.alpha = 0
//        self.labelFour.alpha = 0
//        self.labelOneModifier.alpha = 0
//        self.labelTwoModifier.alpha = 0
//        self.labelThreeModifier.alpha = 0
//        self.labelFourModifier.alpha = 0
        
        labelArray = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix]
        for index in 1...(playerMgr.players.count - 1){
            print("Assign label \(index) to name \(playerMgr.players[index].name)")
            self.labelArray[index].text = "\(playerMgr.players[index].name)"
            if playerMgr.players[index].shift == false {
                self.labelArray[index].backgroundColor = UIColor.green
            } else if playerMgr.players[index].modifier == true{
                self.labelArray[index].backgroundColor = UIColor.red
            } else {
                self.labelArray[index].backgroundColor = UIColor.yellow
            }
            }
        
        
    }
    
    override func viewDidAppear(_ animated: Bool){
        print("view3DidLayoutSubviews")
        super.viewDidAppear(animated)
    }
}



