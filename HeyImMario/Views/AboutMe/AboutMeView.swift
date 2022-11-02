//
//  AboutMe.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct AboutMeView: View {
	
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
                
                Text("A \(myAge) year old Software Engineer from Spain.\n\nI'm currently working at NTT Data Spain as an iOS Engineer.\n\nAn absolute IT passionate, constantly learner and a software development enthusiast.")
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
		AboutMeView()
    }
}
