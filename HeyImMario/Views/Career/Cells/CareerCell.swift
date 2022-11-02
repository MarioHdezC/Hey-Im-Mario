//
//  CareerCell.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 7/6/22.
//

import SwiftUI

struct CareerCell: View {
	
	var dateTime = "📅 2021 - Present"
	var careerTitle = "iOS Developer @ NTT Data"
	
    var body: some View {
		VStack(alignment: .leading) {
			HStack(){
				Text(dateTime)
					.font(.title3)
					.fontWeight(.bold)
					.padding()
				
				Spacer()
			}
			
			Text(careerTitle)
				.padding(EdgeInsets(top: 0, leading: 45, bottom: 0, trailing: 10))
		}
    }
}

struct CareerCell_Previews: PreviewProvider {
    static var previews: some View {
        CareerCell()
			.previewLayout(.sizeThatFits)
    }
}
