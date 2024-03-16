//
//  CatFancySwiftUITestApp.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import SwiftUI

struct CatFancySwiftUITestApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                Text("Running Unit Tests")
                    .font(.largeTitle)
                ProgressView()
            }
        }
    }
}
