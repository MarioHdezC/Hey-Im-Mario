//
//  EducationSkills.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct EducationSkills: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack{
                    Image("development")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        HStack(){
                            Text("📚 Education")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding()
                        }
                        
                        Text("Degree in Software Engineering @ University of Salamanca, Spain")
                            .padding(EdgeInsets(top: 0, leading: 45, bottom: 0, trailing: 10))
                        
                        HStack(){
                            Text("💻 Development Skills")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding()
                        }
                        
                        VStack(alignment: .leading){
                            Text("iOS mobile app development with SwiftUI and UIKit")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                            
                            Text("iOS/Android mobile app development with Ionic & Angular")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                            
                            Text("iOS/Android mobile app development with Flutter & Dart (Basic Knowledge)")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                            
                            Text("Web development with Angular & JavaScript")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                        }
                        
                        HStack(){
                            Text("💻 Personal Skills")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding()
                        }
                        
                        VStack(alignment: .leading){
                            Text("Team work")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                            
                            Text("Communication")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                            
                            Text("Enthusiasm")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                            
                            Text("Adaptability")
                                .padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
                        }
                    }
                    
                    Spacer()
                }
                .navigationBarTitle("Education & Skills")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct EducationSkills_Previews: PreviewProvider {
    static var previews: some View {
		EducationSkills()
			.preferredColorScheme(.dark)
    }
}
