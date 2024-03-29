//
//  URLSessionExtensionTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

class URLSessionExtensionTests: XCTestCase {
    override class func setUp() {
        URLSession.didProcessURLs = false
    }
    
    override class func tearDown() {
        URLSession.didProcessURLs = false
    }
    
    func testStubData() {
        Current.settings.breedsURL = .withMore
        let session = URLSession.stub
        XCTAssert(session.configuration.protocolClasses?[0] is URLProtocolStub.Type)
        let expectedTestURLCount = MockData.breedNames.count + BreedsURL.allCases.count
        XCTAssertEqual(expectedTestURLCount, URLSession.urlDataDict.count)
    }
}
