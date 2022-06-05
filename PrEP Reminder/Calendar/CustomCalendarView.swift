//
//  CustomCalendarView.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

struct CustomCalendarView: View {
    
    let data = Array(-2...31).map { "\($0)" }
    let layout = [ GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()) ]
    
    let days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" ]
    
    var body: some View {
        
        
        
        VStack {
            Text("June 2022")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
                
            HStack {
                ForEach(days, id: \.self) { day in
                    Spacer()
                    Text(day)
                        .fontWeight(.semibold)
                    Spacer()
                }
            }
            
            LazyVGrid(columns: layout, spacing: 30) {
                ForEach(data, id: \.self) { item in
                    formatDate(day: Int(item)!)
                
                }
            }
        }
        .padding()
        
    }
}

struct formatDate: View {
    
    var day: Int
    
    var highlightedDates: [Int] = [2, 3, 4, 5]
    
    var currentDay = 5
    
    var body: some View {
        if day < 1 {
            Text(String(day + 31))
                .foregroundColor(.gray)
                
        }
        
        else if day == currentDay && !highlightedDates.contains(day) {
            ZStack {
                Circle()
                    .strokeBorder(lineWidth: 3)
                    .foregroundColor(Color("Prep Blue"))
                    .frame(width: 30, height: 30)
                    
                Text(String(day))
                    
                    .fontWeight(.medium)
            }
        }

        else if highlightedDates.contains(day)  {
            ZStack {
                Circle()
                    .foregroundColor(Color("Prep Blue"))
                    .frame(width: 30, height: 30)
                Text(String(day))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
            }
        } else {
            Text(String(day))
                .fontWeight(.medium)
        }
                
    }
    
    
    
}

struct CustomCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCalendarView()
    }
}
