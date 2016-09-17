//
//  ThirdViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/11/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
//      ///Buttons
    @IBOutlet weak var resetButton: UILabel!
    
    
//      ///Labels
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    var labelArray : [UILabel] = []

//View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print ("view 3 Did Load")
    }
// View Will Appear
    override func viewWillAppear(_ animated: Bool) {
       print("view 3 Will Appear")
    }
    
// View Will Layout Subviews
    override func viewWillLayoutSubviews() {
      print("view 3 Will Layout Subviews")
    }
    
// View did layout subviews
    override func viewDidLayoutSubviews() {
        print ("view 3 Did Layout Subviews")
        super.viewDidLayoutSubviews()
        
//      Itterates through the list of labels and sets them to alpha 0.
//      This makes them transparent to allow fade in animation.
//      Additionaly, changes the text of each label to the names in the player list.
        
        labelArray = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix]
        
        for index in 0...(playerMgr.players.count - 1) {
            print("Set label \(index) alpha to 0.")
            self.labelArray[index].alpha = 0
            print("Assign label \(index) to name \(playerMgr.players[index].name)")
            self.labelArray[index].text = "\(playerMgr.players[index].name)"
        }

//      Changes the background color of each label to:
//                                                  --Green if player DOES NOT SHIFT--
//                                                  --Yellow if player SHIFTS ONE CARD--
//                                                  --Red if the player SHIFTS TWO CARDS--

        
        for index in 0...(playerMgr.players.count - 1) {
            if playerMgr.players[index].shift == false {
                self.labelArray[index].backgroundColor = UIColor.green
            } else if playerMgr.players[index].modifier == true {
                self.labelArray[index].backgroundColor = UIColor.red
            } else {
                self.labelArray[index].backgroundColor = UIColor.yellow
            }
        }
        
        
    }
    
    override func viewDidAppear(_ animated: Bool){
        print("view3DidLayoutSubviews")
        super.viewDidAppear(animated)
//      Animation to fade in labels
        
        UIView.animateWithDuration( 2, animations:  {
        for index in 0...(playerMgr.players.count - 1) {
            if playerMgr.players[index].shift == false {
                self.labelArray[index].alpha = 50
            } else if playerMgr.players[index].modifier == true {
                self.labelArray[index].alpha = 100
            } else {
                self.labelArray[index].alpha = 70
                }
            }
        }

}
}




    




