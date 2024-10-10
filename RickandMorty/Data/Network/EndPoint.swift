//
//  EndPoint.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation
import Alamofire

protocol EndPoint: URLConvertible {
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders? { get }
    var parameters: Parameters? { get }
    var encoding: ParameterEncoding { get }
}

extension EndPoint {
    var baseURL: URL {
        let urlString = ProcessInfo.processInfo.environment["BASE_URL"]!
        return URL(string: urlString)!
    }
    
    func asURL() throws -> URL {
        return baseURL.appending(path: path)
    }
}
