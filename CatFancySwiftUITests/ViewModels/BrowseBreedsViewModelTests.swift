//
//  BrowseBreedsViewModelTests.swift
//  CatFancySwiftUITests
//
//  Created by Romeo Flauta on 3/17/24.
//

@testable import CatFancySwiftUI
import XCTest

final class BrowseBreedsViewModelTests: XCTestCase {
    func testLoadBreeds() async {
        let vm = BrowseBreedsViewModel()
        
        let loadingState = vm.state
        XCTAssertEqual(loadingState, .loading)
        
        Current.settings.breedsURL = .withMore
        await vm.loadBreeds()
        let actualLoadedState = vm.state
        switch actualLoadedState {
        case .loading, .error:
            XCTFail("Unexpected state: \(actualLoadedState)")
            return
        case .loaded(let breeds):
            XCTAssertEqual(breeds.count, MockData.breedNames.count)
        }
        
        Current.settings.breedsURL = .malformed
        await vm.loadBreeds()
        let errorState = vm.state
        switch errorState {
        case .loading, .loaded:
            XCTFail("Unexpected state: \(errorState)")
            return
        case .error:
            break
        }
        
        Current.settings.breedsURL = .empty
        await vm.loadBreeds()
        let emptyLoadedState = vm.state
        switch emptyLoadedState {
        case .loading, .error:
            XCTFail("Unexpected state: \(emptyLoadedState)")
            return
        case .loaded(let breeds):
            XCTAssertEqual(breeds.count, 0)
        }
        
        Current.settings.breedsURL = .withMore
    }
}
