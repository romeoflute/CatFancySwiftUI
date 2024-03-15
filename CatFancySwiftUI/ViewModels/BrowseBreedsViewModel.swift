//
//  BrowseBreedsViewModel.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/15/24.
//

import Observation

@Observable
class BrowseBreedsViewModel {
    enum State {
        case loading
        case loaded(breeds: [Breed])
        case error
    }
    
    var state = State.loading
    private static let soundPlayer = SoundPlayer()
    
    func loadBreeds() async {
        state = .loading
        do {
            let breeds = try await BreedsLoader.loadBreeds()
            state = .loaded(breeds: breeds)
        } catch {
            state = .error
        }
        
        switch state {
        case .loading:
            break
        case .loaded(breeds: let breeds):
            if breeds.isEmpty {
                BrowseBreedsViewModel.soundPlayer.play(.sadTrombone)
            } else {
                BrowseBreedsViewModel.soundPlayer.play(.chime)
            }
        case .error:
            BrowseBreedsViewModel.soundPlayer.play(.sadTrombone)
        }
    }
}
