//
//  TitleCell.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 7/2/23.
//

import SwiftUI

struct EducationSkillTitle: View {
	var title: String
    var body: some View {
		HStack(){
			Text(title)
				.font(.title3)
				.fontWeight(.bold)
				.padding()
		}
    }
}

struct TitleCell_Previews: PreviewProvider {
    static var previews: some View {
		EducationSkillTitle(title: "")
    }
}
