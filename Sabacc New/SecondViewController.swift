//
//  SecondViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/8/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

class SecondViewController:
    UIViewController {

/// Declarations
        //Outlets and Buttons
    @IBOutlet weak var spinning: UIImageView!
        //Variables
    var timer = Timer ()
    var shift = false
    var startTimer = false
    var randomTimeInterval = 60

/// Functions
        //rolls dice for each player and saves the value in player structure.
        //additionaly, sets the player's current shift and modifier vallue to true or false based on said roll.
    func diceIsRolled() {
        var i = 0
        var die = 0
        while (i < playerMgr.players.count) {
            die = Int(arc4random_uniform(6)+1)
            playerMgr.players[i].playersCurrentDiceRoll = die
            print("player \(i+1) rolled \(die)")
                if playerMgr.players[i].playersCurrentDiceRoll <= 3  {
                    playerMgr.players[i].shift = false
                    playerMgr.players[i].modifier = false
                    print("...and does not shift this round.")
                } else if playerMgr.players[i].playersCurrentDiceRoll > 5 {
                    playerMgr.players[i].shift = true
                    playerMgr.players[i].modifier = true
                    print("...and shifts two cards this round")
                } else {
                    playerMgr.players[i].shift = true
                    playerMgr.players[i].modifier = false
                    print("...and shifts one card this round")
            }
            i += 1
        }
    }
    
    //View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view2WillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        print("view2WillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews(){
        print("view2DidLayoutSubviews")
    }
    
    
    //Rotation Graphic
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.spinning.transform =
                CGAffineTransform(rotationAngle: 90)
            }) { (_) -> Void in
                return ()
        }
            
        }
    
    @IBOutlet weak var testButton: UIButton!
    @IBAction func testButtonFunc_Click(_ sender:UIButton){
        print("Shift Button Pressed")
        //Simulated Timer Fired
        diceIsRolled()
    
    //Random Timer Interval Generator
        var numberOfPlayers:UInt32 = UInt32(playerMgr.players.count)
        numberOfPlayers += 1
        randomTimeInterval = Int(arc4random_uniform(numberOfPlayers*30)+(numberOfPlayers)*60)
    
    
    //Timer Running
        
       // timer = Timer.scheduledTimerWithTimeInterval(ti: randomTimeInterval, invocation: startTimer = true, repeats: true){
       // print("timer stared?")

       // }
}
}
    
        
    



