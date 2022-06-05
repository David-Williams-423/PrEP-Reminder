//
//  SwiftUIView.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

struct HomeView: View {
    
    var user: User
    
    
    @State var date = Date()
    var updateTimer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {_ in
            self.date = Date()
        })
    }
    
    var timeRemaining: Int {
        let cal = Calendar.current
        let components = cal.dateComponents([.second], from: date, to: user.reminderTime)
        let diff = components.second!
        return diff
    }
    
    var timeString: String {
        
        var hours: Int = Int(floor(Double(timeRemaining / 3600)))
        
        var minutes = Int(floor(Double(timeRemaining / 60)))
        
        if hours == 0 {
            
            if minutes == 0 {
                if timeRemaining == 1 {
                    return "\(String(timeRemaining)) Second"
                } else {
                    return "\(String(timeRemaining)) Seconds"
                }
                
            } else {
                if minutes == 1 {
                    return "\(String(minutes)) Minute"
                } else {
                    return "\(String(minutes)) Minutes"
                }
                
            }
            
        } else {
            if hours == 1 {
                return "\(String(hours)) Hour"
            } else {
                return "\(String(hours)) Hours"
            }
            
        }
        
    }
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let notify = NotificationHandler()
    
    var body: some View {
        ZStack {
            VStack {
                
                HStack {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                }.padding()

                VStack(spacing: 5) {
                    
                        
                    CustomCalendarView(user: user)
                    
                    
                    HStack(spacing: 4) {
                        Image(systemName: "heart.fill")
                        Image(systemName: "heart.fill")
                        Image(systemName: "heart.fill")
                        Image(systemName: "heart.fill")
                        Image(systemName: "heart")
                        Image(systemName: "heart")
                        Image(systemName: "heart")
                    }.foregroundColor(Color("Prep Purple"))
                        .font(.system(size: 40))
                        
                }
                .padding(.vertical, 50)

                Button(action: {
                    
                    if timeRemaining == 0 {
                        var currentDay: Int {
                            
                            let date = Date()
                            let calendar = Calendar.current
                            let components = calendar.dateComponents([.day], from: date)
                            return components.day!
                            
                            
                        }
                        
                        user.daysTaken.append(currentDay)
                    }
                   
                    
                }, label: {
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 250, height: 75)
                            .cornerRadius(30)
                            .foregroundColor(Color("Prep Blue"))
                            .shadow(radius: 5)
                        Text(timeRemaining == 0 ? "Log" : timeString)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.white)
                    }
                })
                
                .padding(.top)
                
                Spacer()

            }
        }
        .onAppear(perform: {let _ = self.updateTimer})
        .onReceive(timer) { time in
            if !(timeRemaining > 0) {
                notify.sendNotification(date: Date(), type: "time", timeInterval: 2, title: "PrEP Alert", body: "Remember to take your PrEP Medication!")
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(user: User())
    }
}
