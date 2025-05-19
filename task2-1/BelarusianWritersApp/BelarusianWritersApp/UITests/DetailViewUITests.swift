//
//  DetailViewUITests.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 20/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import XCTest

class DetailViewUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        loginAndNavigateToMain()
    }
    
    func testNavigateToDetail() {
        let firstCell = app.collectionViews["collectionView"].cells.firstMatch
        firstCell.tap()
        
        XCTAssertTrue(app.staticTexts["Якуб Колас"].exists)
        XCTAssertTrue(app.staticTexts["Поэт, писатель, драматург..."].exists)
    }
}
