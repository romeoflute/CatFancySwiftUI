//
//  SettingsTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

class SettingsTests: XCTestCase {
    func testBreedsURLSetting() {
        let settings = Settings(getterSetter: GetterSetterFake())
        XCTAssertEqual(Settings.breedsURLDefault, settings.breedsURL)
        XCTAssertEqual(BreedsURL.withMore, settings.breedsURL)
        settings.breedsURL = .withMore
        XCTAssertEqual(Settings.breedsURLDefault, settings.breedsURL)
        XCTAssertEqual(BreedsURL.withMore, settings.breedsURL)
        Current.settings.breedsURL = Settings.breedsURLDefault
    }
    
    func testSessionTypeSetting() {
        let settings = Settings(getterSetter: GetterSetterFake())
        XCTAssertEqual(Settings.sessionTypeDefault, settings.sessionType)
        XCTAssertEqual(SessionType.shared, settings.sessionType)
        settings.sessionType = .stub
        XCTAssertNotEqual(Settings.sessionTypeDefault, settings.sessionType)
        XCTAssertEqual(SessionType.stub, settings.sessionType)
        Current.settings.sessionType = Settings.sessionTypeDefault
    }
    
    func testSortOrderSetting() {
        let settings = Settings(getterSetter: GetterSetterFake())
        XCTAssertEqual(Settings.sortOrderDefault, settings.sortOrder)
        XCTAssertEqual(SortOrder.name, settings.sortOrder)
        settings.sortOrder = .popularity
        XCTAssertNotEqual(Settings.sortOrderDefault, settings.sortOrder)
        XCTAssertEqual(SortOrder.popularity, settings.sortOrder)
        Current.settings.sortOrder = Settings.sortOrderDefault
    }
}
