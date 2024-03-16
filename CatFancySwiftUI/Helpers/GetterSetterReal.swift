//
//  GetterSetterReal.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import Foundation

class GetterSetterReal: GetterSetter {
    func get(key: String) -> String? {
        return UserDefaults.standard.string(forKey: key)
    }
    
    func set(key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
}
