//
//  AboutMeViewModel.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 28/10/22.
//

import Foundation

class AboutMeViewModel: ObservableObject {
	@Published var yearOld: Int = 0
	
	func calculateAge(actualDate: Date) -> Int {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd.MM.yyyy"
		
		let now = actualDate
		let birthday = dateFormatter.date(from: "12.06.1996")
		let calendar = Calendar.current

		let ageComponents = calendar.dateComponents([.year], from: birthday ?? Date(), to: now)
		return ageComponents.year ?? 0
	}
}
