//
//  ContentView.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 11/28/22.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var showWarGameView = false
    //@State private var showSlotsGameView = false
    
    //I'm working on something below
    //@ObservedObject var videoIdea = VideoIdea()
    
    let gradient = Gradient(colors: [.red, .purple])
    
    @State private var selectedPfp: String = "user1"
    @State private var nickNameField: String = "pal"
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    HStack {
                        Spacer()
                        Image(selectedPfp)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 180, height: 180)
                            .clipShape(Circle())
                            .clipped()
                            .padding()
                            .shadow(color: Color.black.opacity(0.25),
                                    radius: 10, x:0, y:10)
                        Spacer()
                    }
                    
                    Text("Let's go another round, ").font(.system(size:24).bold())
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                       // .padding()
                        .foregroundColor(.white)
                    Text( nickNameField + "!").font(.system(size:35).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        
                    
                    Spacer()
                    
                    HStack{
                        Image("chest")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 170, height: 170)
                            .shadow(color: Color.black.opacity(0.2),
                                    radius: 10, x:0, y:5)
                        VStack{
                            Text("Current Tokens: ").font(.system(size:20))
                                .foregroundColor(.white)
                                .shadow(color: Color.black.opacity(0.3),
                                        radius: 10, x:0, y:5)
                            Text("200").font(.system(size:32).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                                .shadow(color: Color.black.opacity(0.25),
                                        radius: 10, x:0, y:0)
                        }
                    }
                    .padding(.bottom)
                    Spacer()
                    
                    HStack{
                        Spacer()
                        NavigationLink(destination: SlotsGameView()){
                            Text("Slot Mania")
                                .font(.system(size:20))
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                                .padding(.horizontal)
                                .background(Color(red: 0.892, green: 0.309, blue: 0.477))
                                .cornerRadius(120)
                                .shadow(color: Color.black.opacity(0.25),
                                        radius: 10, x:0, y:8)
                        }
                        Spacer()
                        NavigationLink(destination: WarGameView()){
                            Text("War Game")
                                .font(.system(size:20))
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                                .padding(.horizontal)
                                .background(Color(red: 0.892, green: 0.309, blue: 0.477))
                                .cornerRadius(120)
                                .shadow(color: Color.black.opacity(0.25),
                                        radius: 10, x:0, y:8)
                                
                        }
                        Spacer()
                    }
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    //.navigationBarHidden(true)
                    .navigationBarItems(
                        leading:
                            NavigationLink(
                                destination: LeaderboardView(),
                                label: {
                                    Image(systemName: "flag.filled.and.flag.crossed")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .shadow(color: Color.black.opacity(0.2),
                                                radius: 10, x:0, y:5)
                                }),
                        trailing:
                            NavigationLink(
                                destination: EditProfileView(selectedPfp: $selectedPfp, nickNameField: $nickNameField),
                                label: {
                                    Image(systemName: "person")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .shadow(color: Color.black.opacity(0.3),
                                                radius: 10, x:0, y:5)
                                })
                    )
                    
                    
                }
                .padding()
                .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
