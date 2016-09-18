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
    @IBOutlet weak var stackViewMain: UIStackView!
    
    
//      ///Labels
    
    var labelArray = Array (repeating: UILabel (), count: playerMgr.players.count)

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
        
//      Creates a label for each player and puts it in the array "labelArray".
//      Puts the array in the stack view named "stackViewMain" with append.
//      Centers the text of the label.
//      Allows the text to be adjusted if it exceeds the length of alotted space for thw label.
//      Itterates through the list of labels and sets them to alpha 0.
//      This makes them transparent to allow fade in animation.
//      Changes the text of each label to the names in the player list.
        
        for index in 0...(playerMgr.players.count - 1) {
            let label = UILabel()
            labelArray.append (label)
            labelArray[index].textAlignment = NSTextAlignment.center
            labelArray[index].adjustsFontSizeToFitWidth = true
   //         labelArray[index].frame.width = (50, 150, 200, 21)
            labelArray[index].alpha = 0
            labelArray[index].text = "\(playerMgr.players[index].name)"
            self.stackViewMain.addArrangedSubview(labelArray[index])
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
    
    override func viewDidAppear(_ animated: Bool) {
        print("view3DidLayoutSubviews")
        super.viewDidAppear(animated)
//      Animation to fade in labels
//      Fades labels in to 50% alpha if they are green and player does not shift.
//      Fades labels in to 70% alpha if they are yellow and player shifts one card.
//      Fades labels in to 100% alpha if the are red and player shifts two cards.
        
        UIView.animate(withDuration : 2, delay: 0, options: [], animations: {
        for index in 0...(playerMgr.players.count - 1) {
            if playerMgr.players[index].shift == false {
                self.labelArray[index].alpha = 0.3
            } else if playerMgr.players[index].modifier == true {
                self.labelArray[index].alpha = 1
            } else {
                self.labelArray[index].alpha = 0.5
                }
            }
        } , completion: nil )

    }
}
