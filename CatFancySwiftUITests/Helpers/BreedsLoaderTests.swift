//
//  BreedsLoaderTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

class BreedsLoaderTests: XCTestCase {
    func testLoadBreeds() async throws {
        Current.settings.breedsURL = .withMore
        let breeds = try await BreedsLoader.loadBreeds()
        let expectedCount = MockData.breedNames.count
        XCTAssertEqual(expectedCount, breeds.count)
    }
}
