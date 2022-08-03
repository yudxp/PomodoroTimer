//
//  TaskNew.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 29/07/22.
//

import SwiftUI

struct TaskNew: View {
  @State private var timeEstimation: Int = 1
  @State private var taskName: String = ""
  @State private var isPressed: Bool = false
  var body: some View {
    VStack{
      Form {
        Section(header: Text("Pomodoro Cycle")){
          Picker("Strength", selection: $timeEstimation) {
            ForEach(1...10, id: \.self) { number in
              Text("\(number)")
            }
          }
          .pickerStyle(.wheel)
          .frame(height: 160)
        }
        Section{
          TextField("Task Name", text: $taskName)
        }
      }
    }.toolbar {
      Button("Save", action: {
        isPressed = true
      })
    } .alert("Task Added 🥳", isPresented: $isPressed){
      
    }
    
    
  }
}



struct TaskNew_Previews: PreviewProvider {
  static var previews: some View {
    TaskNew()
  }
}
