//
//  LeaderboardView.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 11/28/22.
//

import SwiftUI

struct LeaderboardView: View {
    
    @State private var selectedPfp: String = "user1"
    
    let gradient1 = Gradient(colors: [Color(.white), Color("P1")])
    @State private var nickNameField: String = "player"
    
    var body: some View {
        ZStack{
            
            VStack{
                HStack{
                    Text("LEADERBOARD").font(.system(size:35).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 25.0)
                }
                
                
                HStack{
                    Text("1.").font(.system(size:40).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    Image(selectedPfp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    Text(nickNameField).font(.system(size:25).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    
                    Spacer()
                    
                    Text("200").font(.system(size:25).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                        .shadow(color: Color.black.opacity(0.25),
                                radius: 10, x:0, y:0)
                    
                }
                
                HStack{
                    Text("2.").font(.system(size:40).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    Image(selectedPfp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    Text(nickNameField).font(.system(size:25).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    
                    Spacer()
                    
                    Text("200").font(.system(size:25).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                        .shadow(color: Color.black.opacity(0.25),
                                radius: 10, x:0, y:0)
                    
                }
                
                HStack{
                    Text("3.").font(.system(size:40).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    Image(selectedPfp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    Text(nickNameField).font(.system(size:25).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    
                    Spacer()
                    
                    Text("200").font(.system(size:25).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                        .shadow(color: Color.black.opacity(0.25),
                                radius: 10, x:0, y:0)
                    
                }
                
                HStack{
                    Text("4.").font(.system(size:40).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    Image(selectedPfp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    Text(nickNameField).font(.system(size:25).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    
                    Spacer()
                    
                    Text("200").font(.system(size:25).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                        .shadow(color: Color.black.opacity(0.25),
                                radius: 10, x:0, y:0)
                    
                }
                
                HStack{
                    Text("5.").font(.system(size:40).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    Image(selectedPfp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    Text(nickNameField).font(.system(size:25).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 10.0)
                    
                    Spacer()
                    
                    Text("200").font(.system(size:25).bold()).fontWeight(.heavy).foregroundColor(Color(hue: 0.126, saturation: 0.741, brightness: 0.974))
                        .shadow(color: Color.black.opacity(0.25),
                                radius: 10, x:0, y:0)
                    
                }
                
                Spacer()
                
                
                
            }
        }.padding()
            .background(Color(red: 0.892, green: 0.309, blue: 0.477))
            .shadow(color: Color.black.opacity(0.1),
                    radius: 10, x:0, y:8)
        
    }
    
    struct LeaderboardView_Previews: PreviewProvider {
        static var previews: some View {
            LeaderboardView()
        }
    }
}
