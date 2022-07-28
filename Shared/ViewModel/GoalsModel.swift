//
//  GoalsModel.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 28/07/22.
//

import SwiftUI

struct GoalsData: Identifiable {
  let id = UUID()
  let name : String
  var taskLeft : Int
  let image : String
}

struct GoalList {
  static let goalsArray = [
  GoalsData(name: "Lancar Membaca", taskLeft: 4,image: "al-quran"),
  GoalsData(name: "Hidup Sehat", taskLeft: 3, image: "sixPack"),
  GoalsData(name: "Shalat Tepat Waktu", taskLeft: 0, image: "shalat"),
  GoalsData(name: "Jago Berenang", taskLeft: 0, image: "renang")
  ]
}

