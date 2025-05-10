//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Jeremy Kim on 5/2/25.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset Player Scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreBoard = Scoreboard(players: [
            Player(name: "Mocha", score: 0),
            Player(name: "Mochi", score: 5),
        ])
        scoreBoard.resetScores(to: newValue)
        
        for player in scoreBoard.players {
            #expect(player.score == newValue)
        }
    }
    
    @Test("Highest Score Wins")
    func highestScoreWins() async throws {
        let scoreBoard = Scoreboard(
            players: [
                Player(name: "Mocha", score: 0),
                Player(name: "Mochi", score: 4),
            ],
            state: .gameOver,
            doesHighestScoreWin: true
        )
        let winners = scoreBoard.winners
        #expect(winners == [Player(name: "Mochi", score : 4)])

    }
    
    @Test("Lowest Score Wins")
    func lowestScoreWins() async throws {
        let scoreBoard = Scoreboard(
            players: [
                Player(name: "Mocha", score: 0),
                Player(name: "Mochi", score: 4),
            ],
            state: .gameOver,
            doesHighestScoreWin: false
        )
        let winners = scoreBoard.winners
        #expect(winners == [Player(name: "Mocha", score : 0)])
    }

}
