//
//  LoginUITests.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 20/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import XCTest

class LoginUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    func testSuccessfulRegistration() {
        let segmentedControl = app.segmentedControls["segmentedControl"]
        segmentedControl.buttons["Register"].tap()
        
        let emailField = app.textFields["emailTextField"]
        emailField.tap()
        emailField.typeText("test@example.com")
        
        let passwordField = app.secureTextFields["passwordTextField"]
        passwordField.tap()
        passwordField.typeText("123456")
        
        let registerButton = app.buttons["Зарегистрироваться"]
        registerButton.tap()
        
        XCTAssertTrue(app.navigationBars["Список писателей"].exists)
    }
}
