//
//  PomodoroTimerApp.swift
//  PomodoroTimer
//
//  Created by Yudha Hamdi Arzi on 27/07/22.
//

import SwiftUI

@main
struct PomodoroTimerApp: App {
    //MARK: Since We're doing Backgroun fethching Initialize Here
    @StateObject var pomodoroModel: PomodoroModel = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(pomodoroModel)
        }
    }
}
