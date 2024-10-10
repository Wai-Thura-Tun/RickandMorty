//
//  LocationResponse.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation

struct LocationResponse {
    let info: Info?
    let results: [LocationVO]
    
    enum CodingKeys: String, CodingKey {
        case info, results
    }
}
