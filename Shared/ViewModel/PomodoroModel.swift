//
//  PomodoroModel.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

class PomodoroModel: NSObject, ObservableObject {
  //MARK: Timer Properties}
  @Published var progress: CGFloat = 1
  @Published var timerStringValue: String = "00:00"
  @Published var isStarted: Bool = false
  @Published var isFinished: Bool = false
  
  @Published var hour: Int = 0
  @Published var minutes: Int = 0
  @Published var seconds: Int  = 0
  
  //MARK: Total Seconds
  @Published var totalSeconds: Int?
  @Published var statisticTotalSecond: Int?
  
  
  //MARK: Starting Timer
  func startTimer(){
    withAnimation(.easeInOut(duration: 0.25)){isStarted = true}
    totalSeconds = 15
    statisticTotalSecond = totalSeconds
    hour = (totalSeconds ?? 0) / 3600
    minutes = ((totalSeconds ?? 0) / 60) % 60
    seconds = ((totalSeconds ?? 0) % 60)
    timerStringValue = "\(hour == 0 ? "" : "\(hour):")\(minutes >= 10 ? "\(minutes)":"0\(minutes)"):\(seconds >= 10 ? "\(seconds)":"0\(seconds)")"
//    print(timerStringValue)
    // MARK: Calculating Total Seconds for Timer Animation
    //    totalSeconds = (hour * 3600) + (minutes * 60) + seconds
//    print("star timer\(totalSeconds ?? 0)")
  }
  //MARK: Stopping timer
  func stopTimer(){
    withAnimation{
      isStarted = false
      hour = 0
      minutes = 0
      seconds = 0
      progress = 1
    }
    totalSeconds = 0
    statisticTotalSecond = 0
    timerStringValue = "00:00"
  }
  //MARK: Updating Time
  func updateTimer(newSecond: Int){
    totalSeconds = newSecond
    print("updateTimer \(totalSeconds ?? 0)")
    progress = CGFloat(totalSeconds ?? 0) / CGFloat(statisticTotalSecond ?? 0)
    progress = (progress < 0 ? 0 : progress)
    hour = (totalSeconds ?? 0) / 3600
    minutes = ((totalSeconds ?? 0) / 60) % 60
    seconds = ((totalSeconds ?? 0) % 60)
    timerStringValue = "\(hour == 0 ? "" : "\(hour):")\(minutes >= 10 ? "\(minutes)":"0\(minutes)"):\(seconds >= 10 ? "\(seconds)":"0\(seconds)")"
    if totalSeconds ?? 0 <= 0{
      isStarted = false
      print("Finished")
      isFinished = true
    }
  }
}
