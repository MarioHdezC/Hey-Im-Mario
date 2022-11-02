//
//  SplashScreen.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 2/11/22.
//

import SwiftUI

struct SplashScreen: View {
	
	@State private var splashIsActive = true
	@State private var splashSize = 0.8
	@State private var splashOpacity = 0.5
	
    var body: some View {
		if splashIsActive {
			VStack {
				VStack {
					Image("m-logo")
						.resizable()
						.scaledToFit()
						.frame(width: 160, height: 160)
					
					Text("Hey! Im Mario")
						.font(.title2)
						.bold()
						.foregroundColor(Color("green-logo").opacity(0.9))
				}
				.scaleEffect(splashSize)
				.opacity(splashOpacity)
				.onAppear {
					withAnimation(.easeIn(duration: 1.2)) {
						self.splashSize = 0.9
						self.splashOpacity = 1.0
					}
				}
			}
			.onAppear {
				DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
					self.splashIsActive = false
				}
			}
		} else {
			ContentView()
		}
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
