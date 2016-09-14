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
    @IBOutlet var txtComment: UITextField!
    @IBOutlet var tblNames: UITableView!
    @IBOutlet weak var addName: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtName.delegate = self
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
        cell.detailTextLabel!.text = playerMgr.players[(indexPath as NSIndexPath).row].comment
        print("text field clicked")
        
        return cell
    }
    //Events
    @IBAction func btnAddName_Click(_ sender: UIButton){
        playerMgr.addPlayer(txtName.text!, comment: txtComment.text!)
        self.view.endEditing(true)
        txtName.text = ""
        txtComment.text = ""
        tblNames.reloadData()
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//IOS Touch Functions
//override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!){
//    self.view.endEditing(true)

}


