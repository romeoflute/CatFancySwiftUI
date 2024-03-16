//
//  AppLauncher.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import SwiftUI

@main
struct AppLauncher {
    static func main() throws {
        if NSClassFromString("XCTestCase") == nil {
            CatFancySwiftUIApp.main()
        } else {
            CatFancySwiftUITestApp.main()
        }
    }
}
