//
//  ThirdViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/11/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    //Declarations
//    var labelParameter: UILabel!
//    var modifierParameter: UILabel!
    var i = 0
//    func shiftAnimations (labelParameter: UILabel, modifierParameter: UILabel, _i : Int) -> Int{
//        
//        while (i < playerMgr.players.count) {
//            switch playerMgr.players[i].playersCurrentDiceRoll {
//            case 4, 5:
//                labelParameter.text = "\(playerMgr.players[i].name)"
//                UIView.animate(withDuration: 1, animations: {
//                    self.labelParameter.alpha = 100
//                    print("\(playerMgr.players[self.i].name) shifts")
//                })
//                return i
//            case 6:
//                labelParameter.text = "\(playerMgr.players[i].name)"
//                UIView.animate(withDuration: 1, animations: {
//                    self.labelParameter.alpha = 100
//                    })
//                UIView.animate(withDuration: 2, animations: {
//                    self.modifierParameter.alpha = 100
//                })
//                    print("\(playerMgr.players[i].name) shifts two cards")
//                    return i
//            default:
//                print("\(playerMgr.players[i].name) does not shift")
//                return i
//            }
//            i += 1
//        }
//        return i
//    }
    
    //Buttons
    @IBOutlet weak var resetButton: UILabel!
    
    
    //Labels
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelOneModifier: UILabel!
    @IBOutlet weak var labelTwoModifier: UILabel!
    @IBOutlet weak var labelThreeModifier: UILabel!
    @IBOutlet weak var labelFourModifier: UILabel!

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
        self.labelOne.alpha = 0
        self.labelTwo.alpha = 0
        self.labelThree.alpha = 0
        self.labelFour.alpha = 0
        self.labelOneModifier.alpha = 0
        self.labelTwoModifier.alpha = 0
        self.labelThreeModifier.alpha = 0
        self.labelFourModifier.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool){
        print("view3DidLayoutSubviews")
        super.viewDidAppear(animated)
        i = 0
        //Label One
        while (i < playerMgr.players.count) {
            switch playerMgr.players[i].playersCurrentDiceRoll {
            case 4, 5:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelOne.alpha = 100
                    print("\(playerMgr.players[self.i].name) shifts")
                })
                
            case 6:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelOne.alpha = 100
                })
                UIView.animate(withDuration: 2, animations: {
                    self.labelOneModifier.alpha = 100
                })
                print("\(playerMgr.players[i].name) shifts two cards")
                
            default:
                print("\(playerMgr.players[i].name) does not shift")
                
            }
            i += 1
        }
        //Label Two
        while (i < playerMgr.players.count) {
            switch playerMgr.players[i].playersCurrentDiceRoll {
            case 4, 5:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelTwo.alpha = 100
                    print("\(playerMgr.players[self.i].name) shifts")
                })
                
            case 6:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelTwo.alpha = 100
                })
                UIView.animate(withDuration: 2, animations: {
                    self.labelTwoModifier.alpha = 100
                })
                print("\(playerMgr.players[i].name) shifts two cards")
                
            default:
                print("\(playerMgr.players[i].name) does not shift")
                
            }
            i += 1
        }
        //Label Three
        while (i < playerMgr.players.count) {
            switch playerMgr.players[i].playersCurrentDiceRoll {
            case 4, 5:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelThree.alpha = 100
                    print("\(playerMgr.players[self.i].name) shifts")
                })
                
            case 6:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelThree.alpha = 100
                })
                UIView.animate(withDuration: 2, animations: {
                    self.labelThreeModifier.alpha = 100
                })
                print("\(playerMgr.players[i].name) shifts two cards")
                
            default:
                print("\(playerMgr.players[i].name) does not shift")
                
            }
            i += 1
        }
        //Label Four
        while (i < playerMgr.players.count) {
            switch playerMgr.players[i].playersCurrentDiceRoll {
            case 4, 5:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelFour.alpha = 100
                    print("\(playerMgr.players[self.i].name) shifts")
                })
                
            case 6:
                labelOne.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelFour.alpha = 100
                })
                UIView.animate(withDuration: 2, animations: {
                    self.labelFourModifier.alpha = 100
                })
                print("\(playerMgr.players[i].name) shifts two cards")
                
            default:
                print("\(playerMgr.players[i].name) does not shift")
                
            }
            i += 1
        }
//            shiftAnimations(labelParameter: labelOne, modifierParameter: labelOneModifier, _i: i)
//            shiftAnimations(labelParameter: labelTwo, modifierParameter: labelTwoModifier, _i: i)
//            shiftAnimations(labelParameter: labelThree, modifierParameter: labelThreeModifier, _i: i)
//            shiftAnimations(labelParameter: labelFour, modifierParameter: labelFourModifier, _i: i)
    }
}





