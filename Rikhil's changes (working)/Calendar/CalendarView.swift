//
//  CalendarView.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI


var currentDate: Date = .now


struct CalendarView: View {
    
    @State public var selectedDate: Date = .now
    
    public var body: some View {
        
        
        VStack {
            
            Text(selectedDate, style: .date)
                .font(.largeTitle)
            if hasLogged {
                Text("PrEP taken!")
                    .fontWeight(.bold)
            } else {
                Text("PrEP not taken.")
                    .fontWeight(.bold)
            }
            let date: DatePicker = DatePicker(selection: $selectedDate, displayedComponents: [.date], label: {
                Text("")
            })
              date.datePickerStyle(.graphical)
            
            
            
        }
        
    }
}

class Dates {
    
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
