//
//  CustomCalendarView.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

struct CustomCalendarView: View {
    
    var user: User
    
    
    
    let data = Array(-2...30).map { "\($0)" }
    let layout = [
        GridItem(.flexible(minimum: 40)), GridItem(.flexible(minimum: 40)), GridItem(.flexible(minimum: 40)), GridItem(.flexible(minimum: 40)), GridItem(.flexible(minimum: 40)), GridItem(.flexible(minimum: 40)), GridItem(.flexible(minimum: 40)), ]
    
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
                    
                    Button(action: {
                        user.selectedDate = Int(item)!
                    }, label: {
                        formatDate(selectedDate: user.selectedDate, day: Int(item)!, dates: user.daysTaken)
                            .foregroundColor(.black)
                    })
                    
                
                }
            }
        }
        .padding()
        
    }
}

struct formatDate: View {
    
    var selectedDate: Int
    
    var day: Int
    
    
    
    var dates: [Int]
    
    var currentDay: Int {
        
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: date)
        return components.day!
        
        
    }
    
   // var selection
    
    var body: some View {
        if day < 1 {
            Text(String(day + 31))
                .foregroundColor(.gray)
                
        }
        else if selectedDate == day {
            ZStack {
                Circle()
                    
                    .foregroundColor(Color("Prep Purple"))
                    .frame(width: 30, height: 30)
                    
                Text(String(day))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
            }
        }
            
        
        else if day == currentDay && !dates.contains(day) {
            ZStack {
                Circle()
                    .strokeBorder(lineWidth: 3)
                    .foregroundColor(Color("Prep Blue"))
                    .frame(width: 30, height: 30)
                    
                Text(String(day))
                    
                    .fontWeight(.medium)
            }
        }

        else if dates.contains(day)  {
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
        CustomCalendarView(user: User())
    }
}
