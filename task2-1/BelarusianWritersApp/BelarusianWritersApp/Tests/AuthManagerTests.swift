//
//  AuthManagerTests.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 20/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import XCTest
@testable import BelarusianWritersApp

class AuthManagerTests: XCTestCase {
    var defaults: UserDefaults!
    
    override func setUp() {
        super.setUp()
        defaults = UserDefaults(suiteName: "TestUserDefaults")!
        AuthManager.defaults = defaults
    }
    
    override func tearDown() {
        defaults.removePersistentDomain(forName: "TestUserDefaults")
        super.tearDown()
    }
    
    func testSaveAndValidateUser() {
        AuthManager.saveUser(email: "user@example.com", password: "123456")
        XCTAssertTrue(AuthManager.validateUser(email: "user@example.com", password: "123456"))
        XCTAssertFalse(AuthManager.validateUser(email: "user@example.com", password: "wrong"))
    }
}
