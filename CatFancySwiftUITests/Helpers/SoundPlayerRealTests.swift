//
//  SoundPlayerRealTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

final class SoundPlayerRealTests: XCTestCase {
    func testPlay() {
        let soundPlayer = SoundPlayerReal()
        soundPlayer.play(.chime)
        soundPlayer.play(.sadTrombone)
    }
}
