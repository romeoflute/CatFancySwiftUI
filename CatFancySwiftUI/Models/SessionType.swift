//
//  SessionType.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import Foundation

enum SessionType: String, CaseIterable {
    case shared
    case stub
    
    var session: URLSession {
        switch self {
        case .shared:
            return URLSession.shared
        case .stub:
            return URLSession.stub
        }
    }
    
    var displayName: String {
        switch self {
        case .shared:
            return "Shared"
        case .stub:
            return "Stub"
        }
    }
}
