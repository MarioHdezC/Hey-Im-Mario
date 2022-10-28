//
//  AboutMe.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct AboutMe: View {
	
	@ObservedObject var viewModel = AboutMeViewModel()
	@State private var myAge = 0
	
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
                
                Text("A \(myAge) year old software engineer from Spain.\n\nI'm currently working at NTT Data Spain, at the iOS team. \n\nI love mobile app development, especially iOS mobile Apps with SwiftUI and UIKit.\n\nAn absolutly IT passionate who wants to be part of this wonderful community creating helpful apps for everybody.")
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle("About me")
            .navigationBarTitleDisplayMode(.inline)
        }
		.onAppear {
			self.myAge = viewModel.calculateAge(actualDate: Date())
		}
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
		AboutMe()
    }
}
