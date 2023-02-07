//
//  EducationSkills.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct EducationSkillsView: View {
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
                        EducationSkillTitle(title: "📚 Education")
                        EducationSkillItem(items: [
							"Degree in Software Engineering @ University of Salamanca, Spain"
						])
						
                        EducationSkillTitle(title: "💻 Development Skills")
                        EducationSkillItem(items: [
							"iOS mobile app development with SwiftUI and UIKit",
							"iOS/Android mobile app development with Ionic & Angular"
						])
                        
                        EducationSkillTitle(title: "💻 Personal Skills")
                        EducationSkillItem(items: [
							"Team work",
							"Communication",
							"Enthusiasm",
							"Adaptability"
						])
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
		EducationSkillsView()
    }
}
