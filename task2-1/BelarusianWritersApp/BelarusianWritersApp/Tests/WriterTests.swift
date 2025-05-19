//
//  WriterTests.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 20/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import XCTest
@testable import BelarusianWritersApp

class WriterTests: XCTestCase {
    func testWriterInitialization() {
        let writer = Writer(name: "Якуб Колас", bio: "Поэт", books: ["Спадчына"], imageName: "kolos.jpg")
        XCTAssertEqual(writer.name, "Якуб Колас")
        XCTAssertEqual(writer.bio, "Поэт")
        XCTAssertEqual(writer.books, ["Спадчына"])
        XCTAssertEqual(writer.imageName, "kolos.jpg")
    }
}
