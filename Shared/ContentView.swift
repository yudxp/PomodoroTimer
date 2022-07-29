//
//  ContentView.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var pomodoroModel: PomodoroModel
  var body: some View {
    TabView{
      Goals().navigationViewStyle(StackNavigationViewStyle())
        .tabItem{
          Label("Goals", systemImage: "target")
        }
      Summary().navigationViewStyle(StackNavigationViewStyle())
        .tabItem{
          Label("Summary", systemImage: "chart.bar.xaxis")
        }
      Settings().navigationViewStyle(StackNavigationViewStyle())
        .tabItem{
          Label("Settings", systemImage: "gearshape.fill")
        }
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
