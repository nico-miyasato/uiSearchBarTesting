//
//  UITestingProjectUITests.swift
//  UITestingProjectUITests
//
//  Created by Nicolas Miyasato on 09/10/2019.
//  Copyright © 2019 Nicolas Miyasato. All rights reserved.
//

import XCTest

class UITestingProjectUITests: XCTestCase {

    func testSearchBarExists() {

        let app = XCUIApplication()
        app.launch()
        
        // Activate search.
        let searchButton = app.navigationBars.buttons.element(boundBy: 0)
        XCTAssertTrue(searchButton.exists)
        searchButton.tap()
        
        let searchBar = app.searchFields.firstMatch
        XCTAssertTrue(searchBar.exists)
    }
}
