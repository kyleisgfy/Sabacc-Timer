//
//  GameController.swift
//  Sabacc New
//
//  Created by Kyle Schneider on 9/16/16.
//  Copyright © 2016 Kyle Schneider›‹. All rights reserved.
//

import UIKit

var gameCont: GameController = GameController ()

class GameController: NSObject {
    
    
///       ///      ///     Functions      ///      ///     ///


/// Dice Rolling Simulator ///
//    rolls dice for each player and saves the value in player structure.
//    additionaly, sets the player's current shift and modifier vallue to true or false based on said roll.

    func diceIsRolled() {
        var i = 0
        var die = 0
        while (i < playerMgr.players.count) {
            die = Int(arc4random_uniform(6)+1)
            playerMgr.players[i].playersCurrentDiceRoll = die
            print("player \(i+1) rolled \(die)")
            if playerMgr.players[i].playersCurrentDiceRoll <= 3  {
                playerMgr.players[i].shift = false
                playerMgr.players[i].modifier = false
                print("...and does not shift this round.")
            } else if playerMgr.players[i].playersCurrentDiceRoll > 5 {
                playerMgr.players[i].shift = true
                playerMgr.players[i].modifier = true
                print("...and shifts two cards this round")
            } else {
                playerMgr.players[i].shift = true
                playerMgr.players[i].modifier = false
                print("...and shifts one card this round")
            }
            i += 1
        }
    }


/// Random Timer Interval Generator ///
//      Generates a random number range for the timer to count down from.
//      The number is based on how many players are currently playing the game and eligible to shift.

    var randomTimeInterval = 60

    func randomTimeIntervalGenerator () {
        print("Random number called.")
        var numberOfPlayers:UInt32 = UInt32(playerMgr.players.count)
        numberOfPlayers += 1
        randomTimeInterval = Int(arc4random_uniform(numberOfPlayers*30)+(numberOfPlayers)*60)
        print("Random number generated. Timer will count down from \(randomTimeInterval)")
    }
    
    func timerFired () {
        print("Timer has fired")
    }
    
//    func sabaccTimer () {
//     print("Timer has been called.")
//     Timer.scheduledTimer (randomTimeInterval: TimeInterval,
//                             Nil: NSInvocation,
//                             No: Bool) -> Timer
//
//
//    }
    

    
    
    
    
}
