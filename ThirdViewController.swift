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
    var labelParameter: UILabel!
    var modifierParameter: UILabel!
    var i = 0
    func shiftAnimations (labelParameter: UILabel, modifierParameter: UILabel, _i : Int) -> Int{
        
        while (i < playerMgr.players.count) {
            switch playerMgr.players[i].playersCurrentDiceRoll {
            case 4, 5:
                labelParameter.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelParameter.alpha = 100
                    print("\(playerMgr.players[self.i].name) shifts")
                })
                return i
            case 6:
                labelParameter.text = "\(playerMgr.players[i].name)"
                UIView.animate(withDuration: 1, animations: {
                    self.labelParameter.alpha = 100
                    })
                    return i
                UIView.animate(withDuration: 2, animations: {
                    self.modifierParameter.alpha = 100
                })
                    print("\(playerMgr.players[i].name) shifts two cards")
            default:
                print("\(playerMgr.players[i].name) does not shift")
            }
            i += 1
        }
    }
    
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
       // print ("view3DidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
       // print("view3WillAppear")
    }
    
    override func viewWillLayoutSubviews() {
      //  print("view3WillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        //print ("view3DidLayoutSubviews")
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
            shiftAnimations(labelOne: UILabel!, labelOneModifier: UILabel!, i: Int)
        
    }
}





