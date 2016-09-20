//
//  SecondViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/8/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import GameController
import UIKit

class SecondViewController:
      UIViewController
{
    var imageList: Array<AnyObject> = []
    var isAnimating = false
    
    
//      ///Outlets and Buttons
    
    @IBOutlet weak var countDownOne: UIImageView!
//    @IBOutlet weak var gameStyle: UIPickerView!
    @IBOutlet weak var startAnimationButton: UIButton!
    @IBOutlet weak var testButton: UIButton!
    @IBAction func testButtonFunc_Click(_ sender:UIButton){
    
        //      ///Simulate Timer did fire
    
        print("Shift Button Pressed")
        countDownOne.stopAnimating()
        gameCont.diceIsRolled()
        
        //      ///Timer Running
        
        gameCont.randomTimeIntervalGenerator ()
    }
    
    @IBAction func startAnimationButton (_ sender:UIButton){
        if isAnimating != true {
            for index in 0...9 {
                print("image \(index).png put into array")
                let imageName = "\(index).png"
                imageList.append (UIImage (named: imageName)!)
            }
            startAnimation()
        }
    }
    
    func startAnimation () {
        print("Animation has started")
        countDownOne.animationImages = imageList as? [UIImage]
        countDownOne.animationDuration = 1
        countDownOne.startAnimating()
        isAnimating = true
    }

    
    
// View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View 2 Did Load")
        
        if timer.isValid{
            print("timer is already running")
        } else {
            gameCont.sabaccTimer()
            print("timer started")
        }
       
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
        
       
    
    
    

        
    }
//    @IBOutlet weak var gameStyleDiscription: UITextView!
//    var pickerViewDataSource = ["Corisant Rules", "Smuggler's Rules, Jabba's Rules"]
//    let gameStyle.dataSource:UIPickerView = pickerViewDataSource
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    

    
}
    
        
    



