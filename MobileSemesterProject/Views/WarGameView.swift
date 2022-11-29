//
//  WarGameView.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 11/28/22.
//

import SwiftUI

struct WarGameView: View {
    //this property wrapper allows these values to be changed
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    //Generate a random number 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update the score
                    if playerRand > cpuRand{
                        playerScore += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        
                        Text("Player").padding(.bottom, 10.0).foregroundColor(.white).font(.headline)
                        Text(String(playerScore)).foregroundColor(.white).font(.largeTitle)
                        
                    }
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU").padding(.bottom, 10.0).foregroundColor(.white).font(.headline)
                        Text(String(cpuScore)).foregroundColor(.white).font(.largeTitle)
                        
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
            
            
            
            
        }
    }
}

struct WarGameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
