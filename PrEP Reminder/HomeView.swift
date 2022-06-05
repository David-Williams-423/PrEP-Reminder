//
//  SwiftUIView.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var user = User()
    
    @State var timeRemaining = 20
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
                    
                    notify.sendNotification(date: Date(), type: "time", timeInterval: 2, title: "PrEP Alert", body: "Remember to take your PrEP Medication!")
                    
                   
                    
                }, label: {
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 250, height: 75)
                            .cornerRadius(30)
                            .foregroundColor(Color("Prep Blue"))
                            .shadow(radius: 5)
                        Text(timeRemaining == 0 ? "Log" : String(timeRemaining))
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.white)
                    }
                })
                
                .padding(.top)
                
                Spacer()

            }
        }
        .onReceive(timer) { time in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                notify.sendNotification(date: Date(), type: "time", timeInterval: 2, title: "PrEP Alert", body: "Remember to take your PrEP Medication!")
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
