//
//  WarModalView.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 12/9/22.
//

import SwiftUI

struct WarModalView: View {
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
           
            VStack{
                Spacer()
                HStack{
                    Text("Welcome to War!").font(.system(size:40).bold())
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
                
                Text("You will play the ever-iconic card game of War against our state of the art CPUs.").font(.system(size:25))
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                
                Text("*To Play - Tap on the dealer's cards to deal the next round.").font(.system(size:25).bold())
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                
                Text("If you win the hand, a point will be awarded to you. Likewise, if you lose the hand, a point will be awarded to the CPU.").font(.system(size:25))
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                
                Text("For every point you win, one (1) token will be added to your chest.").font(.system(size:25))
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .padding([.leading, .trailing], 30)
                    .padding(.bottom, 10.0)
                Spacer()
            }
        }
    }
    
    struct WarModalView_Previews: PreviewProvider {
        static var previews: some View {
            WarModalView()
        }
    }
}
