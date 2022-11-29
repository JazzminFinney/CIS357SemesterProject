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
    
//HELLO ALL - this page is clearly unfinished, but I wanted to make a picker view to be able to select from a number of images as a profile pic (I just have random examples right now, but I will add real ones soon!) this is just to make sure the functionality worked. - Jazz
    
    //make a default profile pic
    @Binding var selectedPfp: String
    @Binding var nickNameField: String
    
    var body: some View {
        
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
                })
           
            HStack{
                Text("I like to be called:")
                    .padding(.leading, 50.0)
                TextField("Nickname", text: $nickNameField)
            
            }
            Spacer()
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(selectedPfp: .constant("user"), nickNameField: .constant(""))
    }
}
