//
//  ContentView.swift
//  HeyImMario
//
//  Created by Mario Hernandez Corral on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            AboutMeView()
                .tabItem {
                    Text("About")
                    Image(systemName: "person.fill")
                }
            EducationSkillsView()
                .tabItem {
                    Text("Skills")
                    Image(systemName: "desktopcomputer")
                }
            
            CareerView()
                .tabItem {
                    Text("Career")
                    Image(systemName: "briefcase.fill")
                }
            
            ContactView()
                .tabItem {
                    Text("Contact")
                    Image(systemName: "personalhotspot.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
