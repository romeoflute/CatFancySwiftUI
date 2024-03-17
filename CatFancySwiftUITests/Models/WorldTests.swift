//
//  WorldTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

class WorldTests: XCTestCase {
    func testProductionWorld() {
        let world = World.production
        XCTAssert(world.settings.getterSetter is GetterSetterReal)
        XCTAssert(world.soundPlayer is SoundPlayerReal)
    }
    
    func testUnitTestWorld() {
        let world = World.unitTest
        XCTAssert(world.settings.getterSetter is GetterSetterFake)
        XCTAssert(world.soundPlayer is SoundPlayerDummy)
    }
}
