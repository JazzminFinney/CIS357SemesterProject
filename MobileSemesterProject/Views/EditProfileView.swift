//
//  EditProfileView.swift
//  MobileSemesterProject
//
//  Created by Jazzmin Finney on 11/28/22.
//

import SwiftUI

//don't worry about below
//@Binding private var videoTitle:String
//@Binding private var videoContent:String


struct EditProfileView: View {
    
    
    //make a default profile pic
    @Binding var selectedPfp: String
    @Binding var nickNameField: String
    @Binding var statusField: String
    @Binding var bioField: String
    
    let gradient1 = Gradient(colors: [Color(.white), Color("P1")])
    
    var body: some View {
        
        ZStack{

            VStack{
                
                Image(selectedPfp)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .clipped()
                    .padding()
                
                Text("Choose an avatar: ")
                
                Picker(
                    selection: $selectedPfp,
                    label: Text("Profile Character"),
                    content: {
                        Text("Bear").tag("bear")
                        Text("Cat").tag("cat")
                        Text("Chicken").tag("chicken")
                        Text("Dog").tag("dog")
                        Text("Dog (Intimidating)").tag("dog2")
                        Text("Panda").tag("panda")
                        Text("Rabbit").tag("rabbit")
                        Text("Weasel").tag("weasel")
                        Text("Puffer Fish").tag("puffer-fish")
                        Text("Snake").tag("snake")
                        //Text("Deafult").tag("user1")
                    }).padding(.bottom, 10.0)
                
                Spacer()
                VStack{
                    Text("Name:").padding(.trailing, 279.0)
                    TextField("Enter", text: $nickNameField)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                } .padding(.trailing, 16.0)
                    .padding(.leading, 16.0)
                
                VStack{
                    Text("Status:").padding(.trailing, 275.0)
                    TextField("Enter", text: $statusField)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                } .padding(.trailing, 16.0)
                    .padding(.leading, 16.0)
                
                VStack{
                    Text("Bio:").padding(.trailing, 300.0)
                    TextField("Enter", text: $bioField)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                } .padding(.trailing, 16.0)
                    .padding(.leading, 16.0)
                    .padding(.bottom, 20.0)
                Spacer()
                
                Image("poker2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10, x:0, y:5)
                
            }
        }.padding()
            .background(LinearGradient(gradient: gradient1, startPoint: .top, endPoint: .bottom))
            
    }
    
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(
            selectedPfp: .constant("user"),
            nickNameField: .constant(""),
            statusField: .constant(""),
            bioField: .constant(""))
    }
}
