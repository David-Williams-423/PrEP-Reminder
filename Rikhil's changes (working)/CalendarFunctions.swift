//
//  CalendarFunctions.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//
//

import Foundation

// functions used to determine if the current date is selected and which message to show

public var today: Bool = true

struct todayCheck {

    func isItToday(object: CalendarViewModel) -> Bool {
    
        let currentDate: Date = .now
        if currentDate.description.dropLast(15) == object.selectedDate.description.dropLast(15) {
        today = true
    } else {
        today = false
    }
        
    return today
    }
}

struct message {
    func messageGenerator(calendar: CalendarViewModel) -> String {
        var text: String
        let checker: todayCheck = todayCheck()
        if checker.isItToday(object: calendar) {
            if hasLogged {
                text = ("PrEP taken!")
            } else {
                text = ("PrEP not taken yet today.")
            }
        } else {
            if hasLogged {
               text = ("PrEP was taken!")
            } else {
                text = ("PrEP not taken")
            }
        }
        return (text)
    }
}
