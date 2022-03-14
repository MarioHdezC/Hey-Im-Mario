//
//  Contact.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct Contact: View {
    
    @Environment(\.openURL) private var openURL
    
    var body: some View {
        NavigationView {
            VStack(spacing: 50){
                
                ContactCell(iconName: "envelope.fill", contactTitle: "Email", contactBody: "mariohdezdev@gmail.com", circleColor: Color.green)
                    .onTapGesture {
                        //
                    }
                
                ContactCell(iconName: "phone.fill", contactTitle: "Phone", contactBody: "+34 655 59 62 96", circleColor: Color.orange)
                    .onTapGesture {
                        guard let number = URL(string: "tel://" + "655-59-62-96") else { return }
                        UIApplication.shared.open(number)
                    }
                
                ContactCell(iconName: "link", contactTitle: "LinkedIn", contactBody: "Mario Hernández Corral", circleColor: Color.blue)
                    .onTapGesture {
                        if let url = URL(string: "https://www.linkedin.com/in/mario-hern%C3%A1ndez-corral/") {
                            openURL(url)
                        }
                    }
                
                ContactCell(iconName: "link", contactTitle: "GitHub", contactBody: "MarioHdezC", circleColor: Color.purple)
                    .onTapGesture {
                        if let url = URL(string: "https://github.com/MarioHdezC") {
                            openURL(url)
                        }
                    }
                
                Spacer()
            }
            .navigationTitle("Contact me")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact()
    }
}
