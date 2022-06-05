//
//  SwiftUIView.swift
//  PrEP Reminder
//
//  Created by David Williams on 6/4/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                
                HStack {
                    Text("Saturday, June 4")
                        .font(.system(size: 40, weight: .bold))
                              + Text("th")
                                  .font(.system(size: 22.0))
                                  .baselineOffset(16.0)

                }.padding()


                Spacer()

                VStack(spacing: 5) {
                    Text("Streak: 40 Days")
                        .font(.system(size: 40))
                        .fontWeight(.medium)
                        
                    
                    HStack(spacing: 15) {
                        Image(systemName: "flame.fill")
                        Image(systemName: "flame.fill")
                        Image(systemName: "flame.fill")
                        Image(systemName: "flame")
                        Image(systemName: "flame")
                        Image(systemName: "flame")
                        Image(systemName: "flame")
                    }.foregroundColor(.orange)
                        .font(.system(size: 40))
                        
                    CustomCalendarView()
                        
                }


                

                ZStack {
                    Rectangle()
                        .frame(width: 250, height: 75)
                        .cornerRadius(30)
                        .foregroundColor(.green)
                        .shadow(radius: 5)
                    Text("Log")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.top)
                
                Spacer()

            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
