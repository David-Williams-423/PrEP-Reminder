//
//  UserClass.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import Foundation

class User {
    
    var startDate: Date
    var daysTaken: [Date] = []
    var daysMissed: [Date] = []
    
    var reminderTime: Date
    
    init() {
        self.startDate = .now
        self.reminderTime = .now
    }
    
}
