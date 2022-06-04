//
//  HasLogged.swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI

var hasLogged: Bool = false

struct HasLogged {
    
    
    func logger() -> Bool {
        hasLogged = true
        return hasLogged
    }
    
}

//struct HasLogged_Previews: PreviewProvider {
//    static var previews: some View {
//        HasLogged()
//    }
//}
