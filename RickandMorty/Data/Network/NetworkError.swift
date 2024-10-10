//
//  NetworkError.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation

enum NetworkError: Error {
    case EMPTY_RESPONSE
    case INVALID_STATUS_CODE(Int)
    case DECODE_ERROR
}
