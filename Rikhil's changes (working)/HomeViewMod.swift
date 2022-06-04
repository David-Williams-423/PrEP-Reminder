//
//  HomeView(Modified).swift
//  PrEP Reminder
//
//  Created by Rikhil Fellner on 6/4/22.
//

import SwiftUI


struct HomeViewMod: View {
    public var currentDate: Date = .now
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text(currentDate, style:.date)
                        .font(.system(size: 40, weight: .bold))
                              + Text("th")
                                  .font(.system(size: 22.0))
                                  .baselineOffset(16.0)

                }.padding()


                Spacer()

                VStack(spacing: 15) {
                    Text("Streak: 40")
                        .font(.system(size: 40))
                    
                }
                
                Spacer()
                
                CalendarView()
                    .frame(width: 300, height: 300, alignment: .center)

                Spacer()

                ZStack {
                    Rectangle()
                        .frame(width: 250, height: 75)
                        .cornerRadius(20)
                        .foregroundColor(.green)
                    Text("Log")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.bottom)

            }
        }
    }
}

struct HomeViewMod_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewMod()
    }
}
