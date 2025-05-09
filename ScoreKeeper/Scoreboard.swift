//
//  Scoreboard.swift
//  ScoreKeeper
//	
//  Created by Jeremy Kim on 5/3/25.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Jeremy", score: 0),
        Player(name: "Mocha", score: 0),
        Player(name: "Chelyn", score: 0),
    ]
    var state: GameState = .setup
    
    mutating func resetScores(to newValue: Int) {
        
    }
}
