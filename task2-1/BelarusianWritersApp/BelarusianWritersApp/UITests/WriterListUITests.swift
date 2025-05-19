//
//  WriterListUITests.swift
//  BelarusianWritersApp
//
//  Created by MacBook on 20/05/2025.
//  Copyright © 2025 MacBook. All rights reserved.
//

import Foundation
import XCTest

class WriterListUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    func testWritersListDisplayed() {
        // Переходим к главному экрану
        loginAndNavigateToMain()
        
        // Проверяем, что коллекция отображается
        let collectionView = app.collectionViews["collectionView"]
        XCTAssertTrue(collectionView.exists)
        
        // Проверяем, что есть хотя бы один элемент
        XCTAssertGreaterThan(collectionView.cells.count, 0)
    }
    
    private func loginAndNavigateToMain() {
        // Реализация авторизации через UI-тесты
    }
}
