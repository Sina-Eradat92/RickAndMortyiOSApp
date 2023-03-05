//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Sina Eradat on 3/4/23.
//

import Foundation

struct RmLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}

