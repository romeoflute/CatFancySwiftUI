//
//  GetterSetter.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import Foundation

protocol GetterSetter {
    func get(key: String) -> String?
    func set(key: String, value: String)
}
