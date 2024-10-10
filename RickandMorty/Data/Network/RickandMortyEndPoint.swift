//
//  RickandMortyEndPoint.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation
import Alamofire

enum RickandMortyEndPoint: EndPoint {
    
    case Characters(Encodable)
    case Episodes(Encodable)
    case Locations(Encodable)
    
    var path: String {
        switch self {
        case .Characters:
            "/character"
        case .Episodes:
            "/episode"
        case .Locations:
            "/location"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .Characters,
             .Episodes,
             .Locations:
            .get
        }
    }
    
    var headers: HTTPHeaders? {
        switch self {
        case .Characters,
             .Episodes,
             .Locations:
            nil
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .Characters(let request),
             .Episodes(let request),
             .Locations(let request):
            request.asDict()
        }
    }
    
    var encoding: ParameterEncoding {
        switch self {
        case .Characters,
             .Episodes,
             .Locations:
            URLEncoding.default
        }
    }
}
