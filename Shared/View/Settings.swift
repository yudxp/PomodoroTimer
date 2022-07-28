//
//  Settings.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

struct Settings: View {
  var body: some View {
    VStack(alignment:.leading){
      Text("Settings")
        .font(.largeTitle)
        .fontWeight(.bold)
        .padding()
      List{
        Section(header: Text("Pomodoro")){
            Text("Pomodoro Length")
            Text("Short Break Length")
            Text("Long Break Length")
            Text("Long Break After")
          }
        Section(header: Text("Alarm")){
          Text("Work Alarm")
          Text("Break Alarm")
          Text("Vibrate")
        }

          
        }
      }
      .frame(maxWidth: .infinity)
      .edgesIgnoringSafeArea(.horizontal)
      .listStyle(GroupedListStyle())
  }
  }


struct Settings_Previews: PreviewProvider {
  static var previews: some View {
    Settings()
  }
}
