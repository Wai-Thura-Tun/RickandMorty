//
//  CharacterVO.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

struct CharacterVO: Codable, Hashable {
    let id: Int
    let name: String?
    let status: String?
    let species: String?
    let type: String?
    let gender: String?
    let origin: LocationVO?
    let location: LocationVO?
    let image: String?
    let episode: [String]
    let url: String?
    let created: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, status, species, type, gender, origin, location, image, episode, url, created
    }
}
