//
//  PlayerManager.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/9/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

var playerMgr: PlayerManager = PlayerManager ()



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
    
    
    }
}
