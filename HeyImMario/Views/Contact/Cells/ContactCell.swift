//
//  ContactCell.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct ContactCell: View {
    
    var iconName = "envelope.fill"
    var contactTitle = "Email"
    var contactBody = "mariohdezdev@gmail.com"
    var circleColor = Color.cyan
    var isImageFromAssets = false
    
    var body: some View {
        HStack{
            Spacer()
            ZStack{
                Circle()
                    .fill(circleColor)
                    .frame(width: 50, height: 50)
                
                if isImageFromAssets{
                    Image("")
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                }
                else{
                    Image(systemName: iconName)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
            }
            
            Divider()
                .frame(height: 50)
            HStack{
                VStack(alignment: .leading){
                    Text("\(contactTitle)")
                        .fontWeight(.bold)
                        .font(.title3)
                        .padding([.bottom], 5)
                    
                    Text("\(contactBody)")
                }
                .padding(5)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .padding()
            }
        }
    }
}

struct ContactCell_Previews: PreviewProvider {
    static var previews: some View {
        ContactCell()
			.previewLayout(.sizeThatFits)
    }
}
