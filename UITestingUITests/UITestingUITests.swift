//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by Sreeya on 05/08/23.
//

import XCTest

final class UITestingUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    func testWelcome() throws {
    
        let welcome = app.staticTexts.element
     
        XCTAssert(welcome.exists)
        XCTAssertEqual(welcome.label, "Welcome!")
    }
  
    func testLoginButton() throws {
      
        let login = app.buttons["loginButton"]
     
        XCTAssert(login.exists)
        XCTAssertEqual(login.label, "Login")
    }
}
