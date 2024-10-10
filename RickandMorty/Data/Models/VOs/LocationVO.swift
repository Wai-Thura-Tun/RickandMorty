//
//  LocationVO.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

struct LocationVO: Codable, Hashable {
    let id: Int?
    let name: String?
    let type: String?
    let dimension: String?
    let residents: [String]?
    let url: String?
    let created: Date?
    
    enum CodingKeys: String, CodingKey {
        case id, name, type, dimension, residents, url, created
    }
}
