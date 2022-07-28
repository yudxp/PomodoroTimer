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

struct TaskData: Identifiable {
  let id = UUID()
  let name : String
  var session : Int
  let secondLeft : Int
}

struct GoalList {
  
  static let goalsArray = [
  GoalsData(name: "Lancar Membaca AL-Qur'an", taskLeft: 4,image: "al-quran"),
  GoalsData(name: "Hidup Sehat", taskLeft: 3, image: "sixPack"),
  GoalsData(name: "Shalat Tepat Waktu", taskLeft: 0, image: "shalat"),
  GoalsData(name: "Jago Berenang", taskLeft: 0, image: "renang")
  ]
  
  static let goalsDetailArray = [
  TaskData(name: "Belajar Makroj Huruf", session: 2, secondLeft: 15000),
  TaskData(name: "Belajar Tajwid", session: 4, secondLeft: 36000),
  TaskData(name: "Hatam AL-Qur'an", session: 100, secondLeft: 360000),
  TaskData(name: "Reflection", session: 1, secondLeft: 1000)
  ]
}

