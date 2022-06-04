//
//  ContentView(modified).swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI

struct ContentViewMod: View {
    var body: some View {

        TabView {
            HomeViewMod()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentViewMod_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewMod()
    }
}

