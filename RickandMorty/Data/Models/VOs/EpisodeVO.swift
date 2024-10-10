//
//  EpisodeVO.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

struct EpisodeVO: Codable, Hashable {
    let id: Int?
    let name: String?
    let airDate: String?
    let episode: String?
    let characters: [String]
    let url: String?
    let created: String?

    enum CodingKeys: String, CodingKey {
        case id, name, episode, characters, url, created
        case airDate = "air_date"
    }
}
