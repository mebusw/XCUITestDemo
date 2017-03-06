//
//  testUIUITests.swift
//  testUIUITests
//
//  Created by JackyShen on 2017/3/6.
//  Copyright © 2017年 JackyShen. All rights reserved.
//

import XCTest

class testUIUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        let app = XCUIApplication()
        print(app.textFields["text1"].value as Any)
        app.textFields["text1"].tap()
        app.textFields["text1"].typeText("xyz")
    }
    
    
   
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(1, 1)
        let app = XCUIApplication()
        app.buttons["Hello"].tap()
        
        XCTAssertEqual("987xyz", app.staticTexts.element(matching: .any, identifier: "result").label  )
        
        
    }
    
}
