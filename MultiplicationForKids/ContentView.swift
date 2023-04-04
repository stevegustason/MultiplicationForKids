//
//  ContentView.swift
//  MultiplicationForKids
//
//  Created by Steven Gustason on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    // Variable to track whether the user is on the settings screen or playing the game
    @State private var settingsOrPlay = "Settings"
    // Variable to track which multiplication table the user wants to practice
    @State private var multiplcationTable = 1
    // Variable to track the highest number they want in their multiplication table
    @State private var highestNum = 5
    // Variable to track difficulty options
    let difficulty = ["Easy - Up to x5", "Medium - Up to x12", "Hard - Up to x20!"]
    // Variable to track selected difficulty
    @State private var difficultySelection = "Medium - Up to x12"
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            Form {
                VStack {
                    Text("Pick your times table to practice!")
                        .font(.headline)
                    Stepper("\(multiplcationTable) times table", value: $multiplcationTable, in: 1...9)
                }
                VStack {
                    Text("Select your difficulty level!")
                        .font(.headline)
                    Picker("Difficulty:", selection: $difficultySelection) {
                        ForEach(difficulty, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
