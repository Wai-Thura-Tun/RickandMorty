//
//  EpisoderResponse.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation

struct EpisodeResponse: Codable {
    let info: Info?
    let results: [EpisodeVO]
    
    enum CodingKeys: String, CodingKey {
        case info, results
    }
}
