//
//  GoalsNew.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 28/07/22.
//

import SwiftUI

struct GoalsNew: View {
  @State private var goalsName : String = ""
  @State private var taskName : String = ""
    var body: some View {
      VStack(alignment:.leading){
        List{
          Section(header: Text("Goals Name")){
            TextField("Goals Name", text: $goalsName)
          }
          Section(header: Text("Task")){
          }
        }
      }
      .frame(maxWidth: .infinity)
      .edgesIgnoringSafeArea(.horizontal)
      .listStyle(GroupedListStyle())
      .toolbar {
        NavigationLink(destination: TaskNew()){
          Image(systemName: "plus.circle")
            .foregroundColor(Color.accentColor)
        }.navigationViewStyle(StackNavigationViewStyle())
      }
    }
}

struct GoalsNew_Previews: PreviewProvider {
    static var previews: some View {
        GoalsNew()
    }
}
