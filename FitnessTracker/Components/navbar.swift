//
//  navbar.swift
//  FitnessTracker
//
//  Created by Dhruv Dighe on 28/03/2025.
//

import SwiftUI

// MARK: - Reusable NavBar Component
struct NavBar: View {
    @Binding var selectedTab: Int  // Allows parent view to control selection
    
    var body: some View {
        HStack(spacing: 0) {
            // Profile
            NavBarButton(
                icon: "person.crop.circle.fill",
                label: "Profile",
                isSelected: selectedTab == 0
            ) {
                selectedTab = 0
            }
            
            // Workout
            NavBarButton(
                icon: "bolt.fill",
                label: "Workout",
                isSelected: selectedTab == 1
            ) {
                selectedTab = 1
            }
            
            // Exercises
            NavBarButton(
                icon: "list.bullet.rectangle.portrait.fill",
                label: "Exercises",
                isSelected: selectedTab == 2
            ) {
                selectedTab = 2
            }
            
            // History
            NavBarButton(
                icon: "clock.arrow.circlepath",
                label: "History",
                isSelected: selectedTab == 3
            ) {
                selectedTab = 3
            }
            
            // Stats
            NavBarButton(
                icon: "chart.line.uptrend.xyaxis",
                label: "Stats",
                isSelected: selectedTab == 4
            ) {
                selectedTab = 4
            }
        }
        .frame(height: 60)
        .background(Color(.systemBackground))
        .overlay(Divider(), alignment: .top)
    }
}

// MARK: - NavBar Button Subcomponent
struct NavBarButton: View {
    let icon: String
    let label: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: 22))
                Text(label)
                    .font(.caption)
            }
            .frame(maxWidth: .infinity)
            .foregroundColor(isSelected ? .blue : .gray) // Selected = blue, inactive = gray
        }
    }
}

#Preview {
    NavBar(selectedTab: .constant(1)) // Default to tab 1 (Workout)
}
