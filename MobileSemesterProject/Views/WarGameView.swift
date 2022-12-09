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
    @Binding var playerToken: Int
    @State private var nickNameField: String = "You"
    @State var modal = false
    
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image(systemName: "info.circle")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.leading, 290.0)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .onTapGesture {
                        self.modal.toggle()
                    }.sheet(isPresented: $modal){
                        WarModalView()
                    }
                
                Image("tank")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 140)
                    .padding(.top, 16.0)
                    .shadow(color: Color.black.opacity(0.25),
                            radius: 10, x:0, y:10)
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
                        playerToken += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("poker-cards")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                })
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        
                        Text(nickNameField).font(.system(size:24).bold())
                            .padding(.bottom, 2.0).foregroundColor(.white).font(.headline)
                        Text(String(playerScore)).foregroundColor(.white).font(.largeTitle)
                            .padding(.bottom, 16.0)
                        
                    }
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU").font(.system(size:22).bold())
                            .padding(.bottom, 2.0).foregroundColor(.white).font(.headline)
                        Text(String(cpuScore)).foregroundColor(.white).font(.largeTitle)
                            .padding(.bottom, 16.0)
                        
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
        WarGameView(
            playerToken: .constant(0)
        )
    }
}
