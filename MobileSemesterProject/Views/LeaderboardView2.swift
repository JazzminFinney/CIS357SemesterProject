//
//  LeaderboardView2.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 12/4/22.
//

import SwiftUI

struct LeaderboardView2: View {
    
    @State private var selectedPfp: String = "user1"
    @State private var nickNameField: String = "player"
    
    var body: some View {
        ZStack{
            
            VStack{
                Spacer()
                Text("LEADERBOARD").font(.system(size:35).bold())
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding(.bottom, 30.0)
                
                VStack{
                    Image(selectedPfp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                        .clipped()
                        .padding(.bottom, 0.5)
                        .shadow(color: Color.black.opacity(0.20),
                                radius: 10, x:0, y:10)
                    
                    Text(nickNameField).font(.system(size:30).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 0.0)
                    
                    Text("200").font(.system(size:25).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                        .shadow(color: Color.black.opacity(0.25),
                                radius: 10, x:0, y:0)
                }
                Spacer()
                HStack{
                    VStack{
                        Image(selectedPfp)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .clipped()
                            .padding(.bottom, 0.5)
                            .shadow(color: Color.black.opacity(0.20),
                                    radius: 10, x:0, y:10)
                        
                        Text(nickNameField).font(.system(size:25).bold())
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2),
                                    radius: 10, x:0, y:5)
                            .padding(.bottom, 0.0)
                        
                        Text("200").font(.system(size:21).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                            .shadow(color: Color.black.opacity(0.25),
                                    radius: 10, x:0, y:0)
                    }
                    Spacer()
                }.padding(.leading, 16.0)
                
                HStack{
                    Spacer()
                    VStack{
                        Image(selectedPfp)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 125, height: 125)
                            .clipShape(Circle())
                            .clipped()
                            .padding(.bottom, 0.5)
                            .shadow(color: Color.black.opacity(0.20),
                                    radius: 10, x:0, y:10)
                        
                        Text(nickNameField).font(.system(size:21).bold())
                            .foregroundColor(.white)
                            .shadow(color: Color.black.opacity(0.2),
                                    radius: 10, x:0, y:5)
                            .padding(.bottom, 0.0)
                        
                        Text("200").font(.system(size:17.5).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                            .shadow(color: Color.black.opacity(0.25),
                                    radius: 10, x:0, y:0)
                    }.padding(.trailing, 28.0)
                    
                }
            }
        }.padding()
            .background(Color(red: 0.892, green: 0.309, blue: 0.477))
            .shadow(color: Color.black.opacity(0.1),
                    radius: 10, x:0, y:8)
        
        
        
        
    }
    
    struct LeaderboardView2_Previews: PreviewProvider {
        static var previews: some View {
            LeaderboardView2()
        }
    }
}
