//
//  Summary.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

struct Summary: View {
  var body: some View {
    VStack{
      ZStack(alignment: .leading){
        RoundedRectangle(cornerRadius: 10)
          .stroke(.red, lineWidth: 3)
          .frame(width: 340, height: 140)
        Circle()
          .stroke(.purple, lineWidth: 10)
          .frame(width: 80, height: 80)
          .padding()
          .foregroundColor(.clear)
        Circle()
          .stroke(.blue, lineWidth: 10)
          .frame(width: 110, height: 110)
          .padding()
          .foregroundColor(.clear)
          .offset(x: -15, y: 0)
      }
      
    }
  }
}

struct Summary_Previews: PreviewProvider {
  static var previews: some View {
    Summary()
  }
}
