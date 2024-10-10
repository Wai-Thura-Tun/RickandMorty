//
//  CharacterRequest.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

struct CharacterRequest: Codable {
    var page: Int = 1
    let name: String?
    let status: CharacterStatus?
    let species: String?
    let type: String?
    let gender: CharacterGender?
    
    enum CodingKeys: String, CodingKey {
        case page, name, status, species, type, gender
    }
}

enum CharacterStatus: Codable {
    case alive
    case dead
    case unknown
}

enum CharacterGender: Codable {
    case female
    case male
    case genderless
    case unknown
}
