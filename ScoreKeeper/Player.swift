//
//  Player.swift
//  ScoreKeeper
//
//  Created by Jeremy Kim on 5/2/25.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}
