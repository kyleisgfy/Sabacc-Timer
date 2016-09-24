//
//  FirstViewController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/8/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

class FirstViewController:

    UIViewController,
    UITextFieldDelegate,
    UITableViewDelegate,
    UITableViewDataSource {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var tblNames: UITableView!
    @IBOutlet weak var addName: UIButton!
    
//    func swipe(gesture : UIGestureRecognizer) {
//           print("Swipe Left Invoked")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtName.delegate = self
        
//        let leftSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: (Selector(("swipe:"))))
//        leftSwipe.direction = .left
//        view.addGestureRecognizer(leftSwipe)
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    //UITable View Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerMgr.players.count
    }

    //Load Data In Table View
    override func viewWillAppear(_ animated: Bool){
        tblNames.reloadData();
    }
    
    //Delete Names in Table View
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if(editingStyle == UITableViewCellEditingStyle.delete){
        playerMgr.players.remove(at: (indexPath as NSIndexPath).row)
        tblNames.reloadData()
        }
    }
    //Add Player Gets Pressed
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "test")
        cell.textLabel!.text = playerMgr.players[(indexPath as NSIndexPath).row].name
        print("player added")
        
        return cell
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        playerMgr.addPlayer(txtName.text!)
        // self.view.endEditing(true)
        txtName.text = ""
        tblNames.reloadData()
        //textField.resignFirstResponder()
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


