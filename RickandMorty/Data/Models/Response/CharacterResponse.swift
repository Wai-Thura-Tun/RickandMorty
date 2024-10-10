//
//  CharacterResponse.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation

struct CharacterResponse: Codable {
    let info: Info?
    let results: [CharacterVO]
    
    enum CodingKeys: String, CodingKey {
        case info, results
    }
}

struct Info: Codable {
    let count: Int?
    let pages: Int?
    let next: String?
    let prev: String?
    
    enum CodingKeys: String, CodingKey {
        case count, pages, next, prev
    }
}



