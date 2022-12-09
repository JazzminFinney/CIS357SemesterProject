//
//  SlotsModalView.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 12/9/22.
//

import SwiftUI

struct SlotsModalView: View {
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                HStack{
                    Text("Welcome to Slots!").font(.system(size:40).bold())
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 10, x:0, y:5)
                        .padding(.bottom, 60.0)
                    
                    Image(systemName: "face.smiling")
                        .foregroundColor(.white)
                        .font(.system(size:40).bold())
                        .padding(.bottom, 60.0)
                    
                }
                
                
                Text("Here are the insights:").font(.system(size:25).bold())
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding()
                
                Text("Your task is to play the classic Slots machine and try your best at luck.").font(.system(size:25))
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                
                Text("*To Play - Tap on the 'I'm feeling Lucky' button to spin the next set.").font(.system(size:25).bold())
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                
                Text("If you hit three (3) identital icons in a row, two (2) tokens will be added to your chest.").font(.system(size:25))
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                
                Text("Your gained tokens will also be shown above the three icons for your current game, but it will reset for each session.").font(.system(size:25))
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                Spacer()
            }
        }.background(Color(red: 0.892, green: 0.309, blue: 0.477)).ignoresSafeArea()
    }
}

struct SlotsModalView_Previews: PreviewProvider {
    static var previews: some View {
        SlotsModalView()
    }
}
