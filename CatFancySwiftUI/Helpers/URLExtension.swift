//
//  URLExtension.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/15/24.
//

import Foundation

extension URL {
    static func couldNotInit(urlString: String) -> String {
        "Could not initialize URL from \(urlString)."
    }
}
