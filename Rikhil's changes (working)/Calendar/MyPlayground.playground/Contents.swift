import UIKit

var greeting = "Hello, playground"


var currentDate: Date = .now

print(currentDate.description)

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

//struct buttonClick {
//    func log(date: CalendarViewModel) {
//        let dateString: String = String(date.selectedDate.description.dropLast(15))
//        if (logged.contains(dateString)) == false {
//            logged.append(dateString)
//            streakCounter(date: dateString)
//        }
//    }
//    func streakCounter(date: String) {
//        var currentDate: Date = .now
//        var currentDateString: String = String(currentDate.description.dropLast(15))
//
//        var selectedMonthFieldStr: String = String(date[5] + date[6])
//        var currentMonthFieldStr: String = currentDateString[5] + currentDateString[6]
//
//        if  selectedMonthField > currentMonthField {
//            streakCount += 1
//            streakCounter(date: )
//        }
//
//    }
//}
var dateDate: Date = .now
var dateString = dateDate.description.dropLast(15)
print(dateString)
let character = dateString[5]
print(character)
print(String(dateString[5]) + String(dateString[6]))

