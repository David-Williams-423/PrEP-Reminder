//
//  Settings.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

struct SettingsView: View {
    @State private var selectedDate = Date()
    let notify = NotificationHandler()
    var body: some View {
        VStack(spacing: 20) {
        Text("Settings")
            
        List {
            Text("Pick Time to be Notified at")
            DatePicker("Notify me at:", selection:$selectedDate, displayedComponents: .hourAndMinute)
                .labelsHidden()
            }
            
            
            
            Button("Enable Post Notifications") {
                notify.askPermission()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
