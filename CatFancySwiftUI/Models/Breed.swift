//
//  Breed.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/15/24.
//

import Foundation

struct Breed: Decodable, Identifiable {
    var id: String { name }
    let name: String
    let knownFor: String
    let popularity: Int
    let photoUrl: URL
    let infoUrl: URL
    let credit: String
    let license: License
    let description: String
}
