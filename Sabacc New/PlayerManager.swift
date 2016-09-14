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
    var name = "Un-Named"
    var comment = "Some-Comment"
}


class PlayerManager: NSObject {
    
    var players = [structureOfPlayer] ()
    
    func addPlayer (_ name: String, comment: String){
        players.append(structureOfPlayer(name: name, comment: comment))
    }

}
