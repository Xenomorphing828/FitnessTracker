//
//  FitnessTrackerApp.swift
//  FitnessTracker
//
//  Created by Dhruv Dighe on 22/03/2025.
//

import SwiftUI
import Firebase

@main
struct FitnessTrackerApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
