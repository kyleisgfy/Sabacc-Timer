//
//  SecondViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/8/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

//Player Shift Varriables

var playerOneShift = 6
var playerTwoShift = 0
var playerThreeShift = 0
var playerFourShift = 0

class SecondViewController:
    UIViewController {

    //Declarations
    
    @IBOutlet weak var spinning: UIImageView!
    
    var timer = Timer ()
    var shift = false
    var randomTimeInterval = 5
    var startTimer = false
    
    

    
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
    }
    
    
    //Random Timer INterval Generator
    
    
    
    
    //Timer Running
    
 //   func scheduledTimerWithTimeInterval(ti: randomTimeInterval, invocation: starTimer = true, repeats yesOrNo: Bool) -> NSTimer{
   //     print("timer stared?")

    
    //Timer Fired
    
    
    
}

    
        
    



