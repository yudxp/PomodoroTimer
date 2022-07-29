//
//  Summary.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

struct Summary: View {
  var body: some View {
    NavigationView {
      VStack{
          ZStack(){
            RoundedRectangle(cornerRadius: 10)
              .stroke(Color.accentColor, lineWidth: 3)
              .frame(width: 340, height: 140)
            Circle()
              .stroke(.purple, lineWidth: 10)
              .frame(width: 80, height: 80)
              .padding()
              .foregroundColor(.clear)
              .offset(x: -100, y: 0)
            Circle()
              .stroke(.blue, lineWidth: 10)
              .frame(width: 110, height: 110)
              .padding()
              .foregroundColor(.clear)
              .offset(x: -100, y: 0)
            HStack{
              VStack(alignment: .leading) {
                Text("Target")
                  .fontWeight(.semibold)
                Text("200/400")
                Text("Goals")
                  .fontWeight(.semibold)
                Text("2/4")
              }
            }.offset(x: 20, y: 0)
          }
        ZStack(alignment: .top) {
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color.accentColor, lineWidth: 3)
            .frame(width: 340, height: 400, alignment: .center)
          .foregroundColor(.clear)
          VStack {
            HStack{
              Image("nerd")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
              Image("best-seller")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
              Image("medal")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
            }
            HStack{
              Image("chevron")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
              Image("college")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
              Image("badge")
                .resizable()
                .frame(width: 64, height: 64)
                .padding()
            }
          }
        }
      }.navigationTitle("Summary")
    }
  }
}

struct Summary_Previews: PreviewProvider {
  static var previews: some View {
    Summary()
  }
}
