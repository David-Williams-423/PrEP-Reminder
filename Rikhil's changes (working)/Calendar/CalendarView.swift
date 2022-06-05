//
//  CalendarView.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI
import Foundation



class CalendarViewModel: ObservableObject {
    @Published var selectedDate: Date
    init(selectedDate: Date) {
        self.selectedDate = selectedDate
    }
    
}

struct CalendarView: View {
    
    @ObservedObject var vm = CalendarViewModel(selectedDate: .now)
    
    public var body: some View {
        
        VStack {
            let checker: todayCheck = todayCheck()
            
            if checker.isItToday(object: vm) {
                Text(vm.selectedDate, style: .date)
                    .font(.largeTitle)
            }
                
       
            let msg: message = message()
            Text(msg.messageGenerator(calendar: vm))
            DatePicker(selection: $vm.selectedDate, displayedComponents: [.date], label: {
                Text("")
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
