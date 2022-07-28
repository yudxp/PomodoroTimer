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
  
  @Published var hour: Int = 0
  @Published var minutes: Int = 0
  @Published var seconds: Int  = 0
  
  //MARK: Total Seconds
  @Published var totalSeconds: Int = 0
  @Published var statisticTotalSecond: Int = 0
  
  
  //MARK: Starting Timer
  func startTimer(){
    withAnimation(.easeInOut(duration: 0.25)){isStarted = true}
    timerStringValue = "\(hour == 0 ? "" : "\(hour):")\(minutes >= 10 ? "\(minutes)":"0\(minutes)"):\(seconds >= 10 ? "\(seconds)":"0\(seconds)")"
  // MARK: Calculating Total Seconds for Timer Animation
    totalSeconds = (hour * 3600) + (minutes * 60) + seconds
    print("star timer\(totalSeconds)")
    statisticTotalSecond = totalSeconds
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
  func updateTimer(){
    totalSeconds -= 1
    print("updateTimer \(totalSeconds)")
    progress = CGFloat(totalSeconds) / CGFloat(statisticTotalSecond)
    progress = (progress < 0 ? 0 : progress)
    // 60 Minutes * 60 Seconds
    hour = totalSeconds / 3600
    minutes = (totalSeconds / 60) % 60
    seconds = (totalSeconds % 60)
    timerStringValue = "\(hour == 0 ? "" : "\(hour):")\(minutes >= 10 ? "\(minutes)":"0\(minutes)"):\(seconds >= 10 ? "\(seconds)":"0\(seconds)")"
    if totalSeconds <= 0{
      isStarted = false
      print("Finished")
    }
  }
  
//  func secondsToHoursMinutesSeconds(_ seconds: Int) -> (Int, Int, Int) {
//      return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
//  }
  
}
