//
//  User.swift
//  FitnessTracker
//
//  Created by Dhruv Dighe on 22/03/2025.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    
    var initials: String {
        let Formatter = PersonNameComponentsFormatter()
        if let components = Formatter.personNameComponents(from: fullName) {
            Formatter.style = .abbreviated
            return Formatter.string(from: components)
        }
        
        return ""
    }
}


extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullName: "Kobe Bryant", email: "test@gamil.com")
}
