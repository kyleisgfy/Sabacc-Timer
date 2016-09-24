//
//  PlayerManager.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/9/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

var playerMgr: PlayerManager = PlayerManager ()

var paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
var path = paths.appendingPathComponent("data.plist")
let save = NSDictionary(contentsOfFile: path)

// Get the documents Directory
func documentsDirectory() -> String {
    let documentsFolderPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    return documentsFolderPath
}

// Get path for a file in the directory
func fileInDocumentsDirectory(filename: String) -> String {
    
    let writePath = (documentsDirectory() as NSString).appendingPathComponent("Players")
    
    if (!FileManager.default.fileExists(atPath: writePath)) {
        do {
            try FileManager.default.createDirectory(atPath: writePath, withIntermediateDirectories: false, attributes: nil) }
        catch let error as NSError {
            print(error.localizedDescription);
        }
    }
    return (writePath as NSString).appendingPathComponent(filename)
}

//func savePlayer (player: String, path: String ){
//    
//    let playerData = String.self
//    
////   let result = playerData.writeToFile(path, atomically: true)
//    
////    print("\(result)")
////    print("\(path)")
//    
//}

struct structureOfPlayer{
    var name = "String"
    var shift =  false
    var modifier = false
    var playersCurrentDiceRoll:Int = 0
}


class PlayerManager: NSObject {
    
    var players = [structureOfPlayer] ()
    let fileManager = (FileManager.default)
    
    
    func addPlayer (_ name: String){
        players.append(structureOfPlayer(
            name: name,
            shift: false,
            modifier: false,
            playersCurrentDiceRoll: 0))
//        savePlayer(player: name, path: path)
    
    
    }
}
