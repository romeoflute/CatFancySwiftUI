//
//  BrowseBreedsView.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/15/24.
//

import SwiftUI

struct BrowseBreedsView: View {
    var viewModel = BrowseBreedsViewModel()
    var body: some View {
        NavigationStack {
            Group {
                switch viewModel.state {
                case .loading:
                    ProgressView()
                case .error:
                    Text("An error occurred during breed fetching")
                case .loaded(let breeds):
                    if !breeds.isEmpty {
                        Text("Loading succeeded. First breed: \(breeds.first?.name ?? "")")
                    } else {
                        Text("The endpoint returned an empty array of breeds.")
                    }
                }
            }
            .navigationTitle("Cat Breeds")
        }
        .task {
            await viewModel.loadBreeds()
        }
    }
}

#Preview {
    BrowseBreedsView()
}
