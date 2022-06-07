//
//  Career.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct Career: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("career")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
				
				CareerCell(dateTime: "📅 2021 - 2022", careerTitle: "Hybrid Mobile Developer @ NTT Data")
				
				CareerCell(dateTime: "📅 2022 - Present", careerTitle: "iOS Developer @ NTT Data")
                
                Spacer()
            }
            .navigationTitle("My Career")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Career_Previews: PreviewProvider {
    static var previews: some View {
        Career()
    }
}
