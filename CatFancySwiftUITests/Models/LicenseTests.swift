//
//  LicenseTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

class LicenseTests: XCTestCase {
    func testURL() {
        [
            (License.cc1, "https://creativecommons.org/licenses/by-sa/1.0/"),
            (.cc2, "https://creativecommons.org/licenses/by-sa/2.0/"),
            (.cc3, "https://creativecommons.org/licenses/by-sa/3.0/"),
            (.cc4, "https://creativecommons.org/licenses/by-sa/4.0/"),
            (.ccnd2, "https://creativecommons.org/licenses/by-nd/2.0/"),
            (.pinterest, "https://policy.pinterest.com/en/terms-of-service"),
            (.publicDomain, "https://creativecommons.org/share-your-work/public-domain/")
        ].forEach {
            XCTAssertEqual("\($0.0.url)", $0.1)
        }
    }
}
