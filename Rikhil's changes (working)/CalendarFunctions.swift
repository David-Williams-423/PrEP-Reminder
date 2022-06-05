//
//  CalendarFunctions.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//
//

import Foundation

// functions used to determine if the current date is selected and which message to show

public var today2: Bool = true

struct todayCheck2 {

    func isItToday(object: CalendarViewModel) -> Bool {
    
        let currentDate: Date = .now
        if currentDate.description.dropLast(15) == object.selectedDate.description.dropLast(15) {
        today2 = true
    } else {
        today2 = false
    }
        
    return today2
    }
}

public struct message2 {
    func messageGenerator(calendar: CalendarViewModel) -> String {
        let logCheck: HasLogged = HasLogged()
        var text: String
        let checker: todayCheck2 = todayCheck2()
        if checker.isItToday(object: calendar) {
            if logCheck.logger(date: calendar.selectedDate) {
                text = ("PrEP taken!")
            } else {
                text = ("PrEP not taken yet today.")
            }
        } else {
            if logCheck.logger(date: calendar.selectedDate) {
               text = ("PrEP was taken!")
            } else {
                text = ("PrEP not taken")
            }
        }
        return (text)
    }
    
}



