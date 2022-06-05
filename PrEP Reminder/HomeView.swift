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
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                }.padding()


                

                VStack(spacing: 5) {
                    
                        
                    
                        
                    CustomCalendarView()
                    
                    Text("Streak")
                    
//                    HStack(spacing: 4) {
//                        Image(systemName: "heart.fill")
//                        Image(systemName: "heart.fill")
//                        Image(systemName: "heart.fill")
//                        Image(systemName: "heart")
//                        Image(systemName: "heart")
//                        Image(systemName: "heart")
//                        Image(systemName: "heart")
//                    }.foregroundColor(Color("Prep Purple"))
//                        .font(.system(size: 40))
                        
                }
                .padding(.vertical, 50)


                

                ZStack {
                    Rectangle()
                        .frame(width: 250, height: 75)
                        .cornerRadius(30)
                        .foregroundColor(Color("Prep Blue"))
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
