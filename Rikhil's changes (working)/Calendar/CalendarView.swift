//
//  CalendarView.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI
import Foundation



public class CalendarViewModel: ObservableObject {
    @Published var selectedDate: Date
    init(selectedDate: Date) {
        self.selectedDate = selectedDate
    }
    
}

public let msg: message2 = message2()


struct CalendarView: View {
    
    @ObservedObject var vm = CalendarViewModel(selectedDate: .now)
    //var x: String = ""
    public var body: some View {
        
        VStack {
            let checker: todayCheck2 = todayCheck2()
            
            if checker.isItToday(object: vm) == false {
                Text(vm.selectedDate, style: .date)
                    .font(.largeTitle)
            }
                
       
            //var x = Text(msg.messageGenerator(calendar: vm))
            var x = msg.messageGenerator(calendar: vm)
            Text(x)
                .font(.headline)
            DatePicker(selection: $vm.selectedDate, displayedComponents: [.date], label: {
                Text("")
            })
              .datePickerStyle(.graphical)
            
            
            ZStack {
                Button("Log") {
                    let action: buttonClick = buttonClick()
                    action.log(date: vm)
                    x = (msg.messageGenerator(calendar: vm))

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
