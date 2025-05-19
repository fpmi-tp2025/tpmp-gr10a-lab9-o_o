//
//  PlistManagerTests.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 20/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import XCTest
@testable import BelarusianWritersApp

class PlistManagerTests: XCTestCase {
    func testLoadWritersFromPlist() {
        let writers = PlistManager.loadWriters()
        XCTAssertFalse(writers.isEmpty, "Список писателей должен быть непустым")
        
        if let firstWriter = writers.first {
            XCTAssertNotNil(firstWriter.name)
            XCTAssertNotNil(firstWriter.bio)
            XCTAssertFalse(firstWriter.books.isEmpty)
            XCTAssertNotNil(firstWriter.imageName)
        }
    }
}
