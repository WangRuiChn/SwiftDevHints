//
//  StringExtensionsTests.swift
//  SwiftDevHintsTests
//
//  Created by ZHOU DENGFENG on 17/8/17.
//  Copyright © 2017 ZHOU DENGFENG DEREK. All rights reserved.
//

import XCTest
@testable import SwiftDevHints

class StringExtensionsTests: XCTestCase {
        
    func testMd5() {
        // hello
        XCTAssertEqual("hello".md5.count, 32)
        
        XCTAssertEqual("hello".md5, "hello".md5)
    }
    
    func testCapitalizingFirstLetter() {
        XCTAssertEqual("".capitalizingFirstLetter(), "")
        XCTAssertEqual(" ".capitalizingFirstLetter(), " ")
        XCTAssertEqual("hello".capitalizingFirstLetter(), "Hello")
    }
    
    func testCapitalizeFirstLetter() {
        var string = ""
        string.capitalizeFirstLetter()
        XCTAssertEqual(string, "")
        
        string = " "
        string.capitalizeFirstLetter()
        XCTAssertEqual(string, " ")

        string = "hello"
        string.capitalizeFirstLetter()
        XCTAssertEqual(string, "Hello")
    }
    
    func testLocalized() {
        // hello
        XCTAssertEqual("hello".localized(), "hello")
        
        XCTAssertEqual("hello".localized(comment: "This is greeting words."), "hello")
    }
}
