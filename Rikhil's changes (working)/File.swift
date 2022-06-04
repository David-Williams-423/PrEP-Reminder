//
//  File.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//
//
import Foundation

struct Today {
    var selectedDate = CalendarView.DatePicker.selection
    var today: Bool = true
    var dateSelected: Date = selectedDate
    func isItToday() -> Bool {
        if (String(currentDate, style: .date)) != (String(dateSelected, style: .date)) {
            today = false
        }
    }
}
