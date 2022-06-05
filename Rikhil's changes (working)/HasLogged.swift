//
//  HasLogged.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI
//public var currentDate: Date = .now
//public var logCheck: HasLogged = HasLogged()
//public var hasLogged = logCheck.logger(date: currentDate)
public var hasLogged = false

public struct HasLogged {
    
    
    func logger(date: Date) -> Bool {
        let dateString: String = String(date.description.dropLast(15))
        if logged .contains(dateString) {
            hasLogged = true
        } else {
            hasLogged = false
        }
        
        return hasLogged
    }
    
}

//struct HasLogged_Previews: PreviewProvider {
//    static var previews: some View {
//        HasLogged()
//    }
//}
