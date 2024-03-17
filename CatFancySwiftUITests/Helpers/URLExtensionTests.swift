//
//  URLExtensionTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

class URLExtensionTests: XCTestCase {
    func testCouldNotInit() {
        let 🙀 = "🙀"
        XCTAssertEqual("Could not initialize URL from \(🙀).", URL.couldNotInit(urlString: 🙀))
    }
}
