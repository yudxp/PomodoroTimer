//
//  Goals.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

struct Goals: View {
  
  var goals:[GoalsData] = GoalList.goalsArray
  var body: some View {
    VStack(alignment: .leading) {
//      HStack() {
//        Text("Goals")
//          .fontWeight(.bold)
//          .font(.largeTitle)
//          .padding()
//        Image(systemName: "plus.circle")
//          .frame(width: 44, height: 44)
//          .foregroundColor(.blue)
//          .padding()
//      }
      NavigationView {
        List(goals, id: \.id) { goals in
          NavigationLink(destination:GoalsDetail()) {
            ZStack(alignment: .top){
              Image(goals.image)
                .resizable()
                .frame(width: 330, height: 160, alignment: .center)
                .cornerRadius(15)
              HStack{
                VStack(alignment:.leading) {
                  Text(goals.name)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
                    .minimumScaleFactor(0.5)
                    .frame(width: 250, height: 22, alignment: .leading)
                  if goals.taskLeft == 0 {
                    Text("Completed")
                      .fontWeight(.semibold)
                      .foregroundColor(.white)
                      .shadow(color: .black, radius: 2)
                  } else {
                    Text("\(goals.taskLeft) Task")
                      .fontWeight(.semibold)
                      .foregroundColor(.white)
                      .shadow(color: .black, radius: 2)
                      .frame(width: 250, height: 22, alignment: .leading)
                  }
                }
                Image(systemName: "ellipsis.circle")
                  .padding()
                  .foregroundColor(.white)
                  .shadow(color: .black, radius: 2)
                  .offset(x:20, y: -10)
              }
              .offset(y: 10)
            }
          }
        }
        .frame(maxWidth: .infinity)
        .edgesIgnoringSafeArea(.horizontal)
        .listStyle(GroupedListStyle())
        .navigationTitle("Goals")
        .toolbar {
          Image(systemName: "plus.circle")
        }
      }
    }
  }
}

struct Goals_Previews: PreviewProvider {
  static var previews: some View {
    Goals()
  }
}
