//
//  Settings.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import Observation

@Observable
class Settings {
  var sortOrder = SortOrder.name
}

let settings = Settings()
