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
        UIViewController,
        UIPickerViewDataSource,
        UIPickerViewDelegate {
    
    var timer = Timer()
    var pickerData: [String] = [String]()
    
    
//      ///Outlets and Buttons
    
    @IBOutlet weak var countDownOne: UIImageView!
    @IBOutlet weak var countDownTwo: UIImageView!
    @IBOutlet weak var countDownThree: UIImageView!
    @IBOutlet weak var countDownFour: UIImageView!
    @IBOutlet weak var countDownFive: UIImageView!
    
    @IBOutlet weak var gameStylePicker: UIPickerView!
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
                numberGenerator
                sabaccTimer()
                print("timer started")
            }
        }
    }

//      // Function declation to start animation //     //
    func sabaccTimer () {
        print("Timer has been called.")
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(randomTimeInterval), target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: false)
        
    }
    
    func timerDidFire () {
        print("Timer has fired")
        if isAnimating{
            stopAnimation()
        }
        dice
        
    }
    
    
    func startAnimation () {
        isAnimating = true
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

        //      // Game Style Picker View
        self.gameStylePicker.delegate = self
        self.gameStylePicker.dataSource = self
        pickerData = ["Corisant Rule's", "Smuggler's Rules", "Rules"]
        
        func numberOfComponentsInPickerView(GameStylePicker: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(gameStylePicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return pickerData.count
        }
        
        func pickerView(GameStylePicker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return pickerData[row]
        }
        
        }


// View Will Appear
    override func viewWillAppear(_ animated: Bool) {
        print("View 2 Will Appear")
        stopAnimation ()
    
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
    
        
    



