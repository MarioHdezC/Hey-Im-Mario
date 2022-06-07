//
//  AboutMe.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        NavigationView {
            VStack{
                Image("avatar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
                
                Text("Hey! I'm Mario,")
                    .font(.title)
                    .padding()
                
                Text("A 25 year old software engineer from Spain.\n\nI'm currently working at NTT Data Spain, at the iOS team. \n\nI love mobile app creation, especially iOS mobile Apps with SwiftUI and UIKit.\n\nAn absolutly IT passionate who wants to be part of this wonderful community creating helpful apps for everybody.")
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle("About me")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}
