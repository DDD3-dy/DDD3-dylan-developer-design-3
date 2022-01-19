//
//  DDD3App.swift
//  DDD3
//
//  Created by Dylan Caetano on 20/12/2021.
//

import SwiftUI

@main
struct DDD3App: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
              OnboardingView()
            } else {
                DDD3ContentView()
            }
        }
    }
}
