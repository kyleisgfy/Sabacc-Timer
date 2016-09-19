//
//  SecondViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/8/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

class SecondViewController:
      UIViewController
{
    

//      ///Outlets and Buttons
    @IBOutlet weak var countDownOne: UIImageView!
//    @IBOutlet weak var gameStyle: UIPickerView!
    @IBOutlet weak var startAnimationButton: UIButton!
    
    @IBOutlet weak var testButton: UIButton!
    @IBAction func testButtonFunc_Click(_ sender:UIButton){
        
        
        
        //      ///Simulated Timer Fired
        
        print("Shift Button Pressed")
        gameCont.diceIsRolled()
        
        //      ///Timer Running
        
        gameCont.randomTimeIntervalGenerator ()
    }
    
    @IBAction func startAnimationButton (_ sender:UIButton){
        for index in 1...5 {
            print("image \(index).png put into array")
            let imageName = "timerIcons.\(index).png"
            imageList.append (UIImage (named: imageName))
            imageList .addObject(imageName)
        }

        startAnimation()
    }
    
    
    var imageList: Array! = []
    
    func startAnimation () -> Void {
        
        countDownOne.animationImages = imageList as? [UIImage]
        countDownOne.startAnimating()
    }

    
    
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
       
    
    
    

        
    }
//    @IBOutlet weak var gameStyleDiscription: UITextView!
//    var pickerViewDataSource = ["Corisant Rules", "Smuggler's Rules, Jabba's Rules"]
//    let gameStyle.dataSource:UIPickerView = pickerViewDataSource
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    

    
}
    
        
    



