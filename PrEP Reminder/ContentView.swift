//
//  ContentView.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var user = User()
    
    var body: some View {

        TabView {
            HomeView(user: user)
                .tabItem {
                    Label("Home", systemImage: "house")
                        .foregroundColor(Color("Prep Purple"))
                }
            explore()
                .tabItem {
                    Label("Explore",
                        systemImage: "magnifyingglass")
                    
                }
            SettingsView(user: user)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: User())
    }
}
