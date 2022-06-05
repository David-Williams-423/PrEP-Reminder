//
//  PrEP_ReminderApp.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

@main
struct PrEP_ReminderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


//class CalendarViewModel: ObservableObject {
//
//    @Published var selectedDate: Date
//
//    init(selectedDate: Date) {
//
//        self.selectedDate = selectedDate
//
//    }
//
//}
//
////Then in CalenderView...
//
//@ObservedObject var vm = CalendarViewModel(selectedDate: .now)
//
////Then use $vm.selectedDate in date picker
