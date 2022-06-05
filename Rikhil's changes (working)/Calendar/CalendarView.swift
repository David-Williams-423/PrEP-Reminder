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
            
            if checker.isItToday(object: vm) == false {
                Text(vm.selectedDate, style: .date)
                    .font(.largeTitle)
            }
                
       
            let msg: message = message()
            Text(msg.messageGenerator(calendar: vm))
                .font(.headline)
            DatePicker(selection: $vm.selectedDate, displayedComponents: [.date], label: {
                Text("")
            })
              .datePickerStyle(.graphical)
            
            
            ZStack {
                Button("Log") {
                    let action: buttonClick = buttonClick()
                    action.log(date: vm)
            }
                .font(.system(size: 25, weight: .bold))
                .frame(width: 250, height: 75, alignment: .center)
                .cornerRadius(20)
                .background(Color.green)
            }
            }
              }
      
       
}
        
    struct CalendarView_Previews: PreviewProvider {
        static var previews: some View {
            CalendarView()
        }

}
