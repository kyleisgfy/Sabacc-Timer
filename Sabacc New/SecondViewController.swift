//
//  SecondViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/8/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

//import GameController
import UIKit

var secondView: SecondViewController = SecondViewController ()

var imageList: Array<AnyObject> = []

class SecondViewController:
      UIViewController {
    
    
    var isAnimating = false
    
    
//      ///Outlets and Buttons
    
    @IBOutlet weak var countDownOne: UIImageView!
    @IBOutlet weak var countDownTwo: UIImageView!
    @IBOutlet weak var countDownThree: UIImageView!
    @IBOutlet weak var countDownFour: UIImageView!
    @IBOutlet weak var countDownFive: UIImageView!
    
//    @IBOutlet weak var gameStyle: UIPickerView!
    @IBOutlet weak var startAnimationButton: UIButton!
    
    @IBAction func startAnimationButton (_ sender:UIButton){
        if isAnimating != true {
            for index in 0...9 {
                print("image \(index).png put into array")
                let imageName = "\(index).png"
                imageList.append (UIImage (named: imageName)!)
            }
            
            if timer.isValid{
                print("timer is already running")
            } else {
                startAnimation()
                gameCont.randomTimeIntervalGenerator ()
                gameCont.sabaccTimer()
                print("timer started")
            }
        }
    }

//      // Function declation to start animation //     //
    func startAnimation () {
        print("Animation has started")
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
        isAnimating = true
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
        super.viewDidAppear(animated)
        
    }

//    @IBOutlet weak var gameStyleDiscription: UITextView!
//    var pickerViewDataSource = ["Corisant Rules", "Smuggler's Rules, Jabba's Rules"]
//    let gameStyle.dataSource:UIPickerView = pickerViewDataSource

}
    
        
    



