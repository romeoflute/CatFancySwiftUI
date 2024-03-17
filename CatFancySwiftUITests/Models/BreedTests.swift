//
//  BreedTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

final class BreedTests: XCTestCase {
    func testEquality() async throws {
        let mockLeopard = MockData.breed
        let networkLeopard = try await BreedsLoader.loadBreeds()[0]
        XCTAssertEqual(mockLeopard, networkLeopard)
    }
}
