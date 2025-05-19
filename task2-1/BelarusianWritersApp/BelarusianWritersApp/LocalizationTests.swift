//
//  LocalizationTests.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 20/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import XCTest
@testable import BelarusianWritersApp

class LocalizationTests: XCTestCase {
    func testRussianLocalization() {
        XCTAssertEqual(NSLocalizedString("fill_fields", comment: ""), "Заполните все поля")
    }
    
    func testEnglishLocalization() {
        XCTAssertEqual(NSLocalizedString("invalid_login", comment: ""), "Invalid email or password")
    }
}
