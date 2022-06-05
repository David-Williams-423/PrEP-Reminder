//
//  UserClass.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import Foundation

class User: ObservableObject {
    
    var startDate: Date
    @Published var daysTaken: [Date] = []
    var daysMissed: [Date] = []
    
    var reminderTime: Date
    
    init() {
        self.startDate = .now.startOfDay
        self.reminderTime = .now
    }
    
    func logDate(date: Date) -> Bool {
        
        if !daysTaken.contains(date.startOfDay) {
            daysTaken.append(date)
            return true
        }
        
        return false
        
    }
    
}

extension Date {
    
    var midNight: Date {
            Calendar.current.date(
            bySettingHour: 00,
            minute: 0,
            second: 0,
            of: self)!
        }
    
    var startOfDay: Date {
        return Calendar.current.date(
        byAdding: .day,
        value: 0,
        to: midNight)!
    }
    
}
