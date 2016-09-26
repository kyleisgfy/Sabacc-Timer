//
//  SecondViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/8/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

var isAnimating = false
var imageList: Array<AnyObject> = []

class SecondViewController:
        UIViewController
{
    
    var timer = Timer()
    var randomTimeInterval = 60
    
    
//      ///Outlets and Buttons
    
    @IBOutlet weak var countDownOne: UIImageView!
    @IBOutlet weak var countDownTwo: UIImageView!
    @IBOutlet weak var countDownThree: UIImageView!
    @IBOutlet weak var countDownFour: UIImageView!
    @IBOutlet weak var countDownFive: UIImageView!
    
    @IBOutlet weak var gameStylePicker: UIPickerView!
    @IBOutlet weak var gameStyleDescription: UITextView!

//      // Functions for timer //     //
    
    func randomTimeIntervalGenerator () {
        var numberOfPlayers:UInt32 = UInt32(playerMgr.players.count)
        numberOfPlayers += 1
        randomTimeInterval = Int(arc4random_uniform(numberOfPlayers*30)+(numberOfPlayers)*60)
        print("Random number generated. Timer will count down from \(randomTimeInterval/60):\(randomTimeInterval%60)")
    }
    
    func sabaccTimer () {
        print("Timer has been called.")
        randomTimeIntervalGenerator()
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(randomTimeInterval), target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: false)
        
    }
    
    func timerDidFire () {
        print("Timer has fired")
        stopAnimation()
        diceIsRolled()
        self.performSegue(withIdentifier: "showShiftView", sender:self)
    }
    
//      // Function for Dice Roll //        //
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

    
    
//      //  Function to start animation //     //
    
    func assignImageList () {
        for index in 0...9 {
            print("image \(index).png put into array")
            let imageName = "\(index).png"
            imageList.append (UIImage (named: imageName)!)
        }
    }
    
    
    func startAnimation () {
        isAnimating = true

        countDownOne.animationImages = imageList as? [UIImage]
        countDownOne.animationDuration = 3
        countDownOne.startAnimating()
        countDownTwo.animationImages = imageList as? [UIImage]
        countDownTwo.animationDuration = 4
        countDownTwo.startAnimating()
        countDownThree.animationImages = imageList as? [UIImage]
        countDownThree.animationDuration = 1
        countDownThree.startAnimating()
        countDownFour.animationImages = imageList as? [UIImage]
        countDownFour.animationDuration = 5
        countDownFour.startAnimating()
        countDownFive.animationImages = imageList as? [UIImage]
        countDownFive.animationDuration = 2
        countDownFive.startAnimating()
        print("Animation has started")
    }

    
    //      // Function Declation to stop anamation //      //
    func stopAnimation () {
            countDownOne.stopAnimating()
            countDownTwo.stopAnimating()
            countDownThree.stopAnimating()
            countDownFour.stopAnimating()
            countDownFive.stopAnimating()
            isAnimating = false
            print("Animation is stopped.")
    }

    
// View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View 2 Did Load")
        assignImageList()
    }


// View Will Appear
    override func viewWillAppear(_ animated: Bool) {
        print("View 2 Will Appear")
        //stopAnimation ()
        if timer.isValid != true {
            print("Timer is not running, start timer.")
            startAnimation()
            sabaccTimer()
            print("timer started")
        } else {
            print("Timer is already running.")
        }
    
    }
    
//// View Will Layout Subviews
//    override func viewWillLayoutSubviews() {
//        print("View 2 Will Layout Subviews")
//        
//    }
    
//// View Did Layout Subviews
//    override func viewDidLayoutSubviews() {
//        print("View 2 Did Layout Subviews")
//        
//        
//    }
   
//// View Will Appear
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//    }

}
    
        
    



