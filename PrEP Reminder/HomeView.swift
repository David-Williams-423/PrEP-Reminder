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

                VStack(spacing: 15) {
                    Text("Streak: 40")
                        .font(.system(size: 40))

                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 300, height: 300)
                }


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

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
