//
//  EpisodeRequest.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

struct EpisodeRequest {
    let page: Int = 1
    let name: String?
    let episode: String?
    
    enum CodingKeys: String, CodingKey {
        case page, name, episode
    }
}
