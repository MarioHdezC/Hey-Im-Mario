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
				
				VStack(alignment: .leading) {
					HStack(){
						Text("📅 2021 - Present")
							.font(.title3)
							.fontWeight(.bold)
							.padding()
						
						Spacer()
					}
					
					Text("iOS Developer @ NTT Data")
						.padding(EdgeInsets(top: 0, leading: 45, bottom: 0, trailing: 10))
				}
                
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
