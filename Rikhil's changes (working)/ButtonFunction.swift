//
//  ButtonFunction.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/5/22.
//

import Foundation
import SwiftUI

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

public var logged: [String] = []
public var streakCount: Int = 0


struct buttonClick {
    func log(date: CalendarViewModel) {
        let dateString: String = String(date.selectedDate.description.dropLast(15))
        if (logged.contains(dateString)) == false {
            logged.append(dateString)
//            let checker: HasLogged = HasLogged()
//            if checker.logger(date: date.selectedDate){
//                x = msg.messageGenerator(calendar: date)
//            }
            //streakCounter(date: dateString)
        }
    }
    
//    func streakCounter(date: String) {
//        let dateDay: String = String(date[8]) + String(date[9])
//        let dateDayInt: Int = Int(dateDay)!
//        for item in logged {
//            let it
//    }
//    func streakCounter(date: String) {
//        let currentDate: Date = .now
//        let currentDateString: String = String(currentDate.description.dropLast(15))
//        let selectedMonthStr: String = String(date[5]) + String(date[6])
//        let currentMonthStr: String = String(currentDateString[5]) + String(currentDateString[6])
//
//        let selectedDayStr: String = String(date[8]) + String(date[9])
//        let currentDayStr: String = String(currentDateString[8]) + String(currentDateString[9])
//
//        if  Int(selectedMonthStr) == Int(currentMonthStr) {
//            if Int(selectedDayStr) == Int(currentDayStr) {
//                streakCount += 1
//                let newDate: String = currentDateString.dropLast(2) + String(Int(currentDayStr)! - 1)
//                streakCounter(date: newDate)
//            }
//            streakCount += 1
//            streakCounter(date: currentDateString)
//        }
            
    }
//}

