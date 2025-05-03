//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Jeremy Kim on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Jeremy", score: 0),
        Player(name: "Mocha", score: 0),
        Player(name: "Chelyn", score: 0),
    ]
    
    var body: some View {
        VStack (alignment: .leading){
            Text("Score Keeper")
                .font(.title)
                .bold(true)
                .padding(.bottom)
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                        .bold(true)
                        .font(.headline)
                    Text("Score")
                        .bold(true)
                        .font(.headline)
                }
                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                   
                }
            }
            .padding(.vertical)

            
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
