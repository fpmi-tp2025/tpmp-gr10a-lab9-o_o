//
//  AuthManager.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 19/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation

class AuthManager {
    private static let defaults = UserDefaults.standard
    private static let userKey = "User"
    
    static func saveUser(email: String, password: String) {
        defaults.set(password, forKey: email)
    }
    
    static func validateUser(email: String, password: String) -> Bool {
        return defaults.string(forKey: email) == password
    }
}
