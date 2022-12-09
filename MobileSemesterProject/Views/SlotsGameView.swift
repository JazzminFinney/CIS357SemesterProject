//
//  SlotsGameView.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 11/28/22.
//

import SwiftUI

struct SlotsGameView: View {
    
    @State var credits = 125
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    @Binding var playerToken: Int
    @State var modal1 = false
    
    var body: some View {
        ZStack{
            Spacer()
            VStack(spacing: 20.0) {
             
                Image(systemName: "info.circle")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.leading, 290.0)
                    .padding(.bottom, 0.0)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                    .onTapGesture {
                        self.modal1.toggle()
                    }.sheet(isPresented: $modal1){
                        SlotsModalView()
                    }
                Spacer()
                
                Image("machine")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 140)
                    .shadow(color: Color.black.opacity(0.25),
                            radius: 10, x:0, y:10)
                Spacer()
                
                
                Text("Credits: \(credits)")
                
                HStack {
                    
                    Image("fruit\(slot1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                
                    Image("fruit\(slot2)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image("fruit\(slot3)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
                Button("I'm feeling lucky") {
                    
                    // Randomize the numbers
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                    
                    // Update credits based on match or not
                    if slot1 == slot2 && slot2 == slot3 {
                        // Match
                        credits += 15
                        playerToken += 2
                    }
                    else {
                        credits -= 5
                    }
                }
                // Set padding for all edges
                .padding()
                // Then adjust the left and right padding to be bigger
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(red: 0.819, green: 0.008, blue: 0.247))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
                Spacer()
            }
            Spacer()
        }
        .background(Color(red: 0.892, green: 0.309, blue: 0.477))
       
    }
}
struct SlotsGameView_Previews: PreviewProvider {
    static var previews: some View {
        SlotsGameView(
            playerToken: .constant(0)
        )
    }
}
