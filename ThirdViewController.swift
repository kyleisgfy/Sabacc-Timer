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
    
    
    
    //Buttons
    
    
    //Labels
    @IBOutlet weak var playerOne: UILabel!
    @IBOutlet weak var playerTwo: UILabel!
    @IBOutlet weak var playerThree: UILabel!
    @IBOutlet weak var playerFour: UILabel!
    
    @IBOutlet weak var playerOneModifier: UILabel!
    
    
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
        self.playerOne.alpha = 0
        self.playerTwo.alpha = 0
        self.playerThree.alpha = 0
        self.playerFour.alpha = 0
        playerOneModifier.center.x = playerOneModifier.center.x - self.view.frame.width
    }
    
    override func viewDidAppear(_ animated: Bool){
        print("view3DidLayoutSubviews")
        super.viewDidAppear(animated)
        
        
        //PLAYER ONE
        if playerOneShift <= 3 | playerOneShift >= 5 {
                UIView.animate(withDuration: 1, animations: {
                print("player one does not shift")
            })
            
            
        } else if playerOneShift == 6 {
                print ("player one must shift two cards")
                UIView.animate(withDuration: 1, animations: {
                self.playerOneModifier.center.x = self.playerOneModifier.center.x + self.view.frame.width
                })
                UIView.animate(withDuration: 2, animations: {
                self.playerOne.alpha = 100
                })
            }
                else {
                print("player one must shift one card")
                UIView.animate(withDuration: 2, animations: {
                    self.playerOne.alpha = 100
                })
            
        
        }
        }
        
     //PLAYER TWO
        
    //PLAYER THREE
        
    //PLAYER FOUR
        
    
        
        
    }



