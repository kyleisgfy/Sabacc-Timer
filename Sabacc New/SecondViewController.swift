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

//      ///Outlets and Buttons
    @IBOutlet weak var spinning: UIImageView!

// View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View 2 Did Load")
    }

// View Will Appear
    override func viewWillAppear(_ animated: Bool) {
        print("View 2 Will Appear")
    }
    
// View Will Layout Subviews
    override func viewWillLayoutSubviews() {
        print("View 2 Will Layout Subviews")
    }
    
    override func viewDidLayoutSubviews(){
        print("View 2 Did Layout Subviews")
    }
   
// View Will Appear
    override func viewDidAppear(_ animated: Bool) {

//      ///Rotation Graphic
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
        
        

//      ///Simulated Timer Fired
        
        print("Shift Button Pressed")
        gameCont.diceIsRolled()
    
//      ///Timer Running
        
        gameCont.randomTimeIntervalGenerator ()
    }
    
}
    
        
    



