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
                    ErrorRetryView(message: "An error occurred during breed fetching", viewModel: viewModel)
                case .loaded(let breeds):
                    if !breeds.isEmpty {
                        Text("Loading succeeded. First breed: \(breeds.first?.name ?? "")")
                    } else {
                        ErrorRetryView(message: "The endpoint returned an empty array of breeds.", viewModel: viewModel)
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
