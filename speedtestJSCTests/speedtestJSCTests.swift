//
//  speedtestJSCTests.swift
//  speedtestJSCTests
//
//  Created by Rick Windham on 2/27/15.
//  Copyright (c) 2015 Rick Windham. All rights reserved.
//

import UIKit
import XCTest
import JavaScriptCore

class speedtestJSCTests: XCTestCase {
    
    func testJSCSwiftUsers() {
        if let json_string = self.loadJsonString() {
            let store = SwiftJSCUsers(string: json_string)
            XCTAssertEqual(store.count, 8200, "Unexpected number of users decoded.")
        }
    }
    
    private func loadJsonString() -> String? {
        if let path = NSBundle.mainBundle().pathForResource("convos", ofType: "json") {
            return String(contentsOfFile:path, encoding: NSUTF8StringEncoding, error: nil)
        } else {
            return nil
        }
    }
}
