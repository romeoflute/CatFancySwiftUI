//
//  SoundPlayerDummyTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

final class SoundPlayerDummyTests: XCTestCase {
    func testPlay() {
        let soundPlayer = SoundPlayerDummy()
        soundPlayer.play(.chime)
        soundPlayer.play(.sadTrombone)
    }
}
