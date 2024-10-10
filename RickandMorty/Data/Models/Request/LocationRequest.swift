//
//  LocationRequest.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

struct LocationRequest {
    let page: Int = 1
    let name: String?
    let type: String?
    let dimension: String?
    
    enum CodingKeys: String, CodingKey {
        case page, name, type, dimension
    }
}
