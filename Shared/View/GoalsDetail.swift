//
//  GoalsDetail.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

struct GoalsDetail: View {

  var task: [TaskData] = GoalList.goalsDetailArray
  
  var body: some View {
      NavigationLink(destination: Pomodoro()){
        List(task, id: \.id) { task in
          Text(task.name)
            .foregroundColor(.black)
        }
      }
  }
  }

struct GoalsDetail_Previews: PreviewProvider {
  static var previews: some View {
    GoalsDetail()
  }
}
