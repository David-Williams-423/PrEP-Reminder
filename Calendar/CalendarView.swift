//
//  CalendarView.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI

struct CalendarView: View {
    
    @State private var selectedDate: Date = .now
    
    var body: some View {
        VStack {
            DatePicker(selection: $selectedDate, displayedComponents: [.date], label: {
                Text("Select Date")
            })
            .datePickerStyle(.graphical)
            
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
