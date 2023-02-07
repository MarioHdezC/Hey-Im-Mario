//
//  EducationSkillItem.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 7/2/23.
//

import SwiftUI

struct EducationSkillItem: View {
	var items: [String]
    var body: some View {
		VStack(alignment: .leading) {
			ForEach(items, id: \.self) { item in
				Text(item)
					.padding(EdgeInsets(top: 0, leading: 45, bottom: 10, trailing: 10))
			}
		}
    }
}

struct EducationSkillItem_Previews: PreviewProvider {
    static var previews: some View {
		EducationSkillItem(items: [])
    }
}
