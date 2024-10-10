//
//  NetworkManager.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation
import Alamofire

class NetworkManager {
    static let shared: NetworkManager = .init()
    
    private let session: Session
    
    private init() {
        self.session = Session()
    }
    
    func request<T: Codable>
    (
        endPoint: RickandMortyEndPoint,
        onSuccess: @escaping (T) -> Void,
        onFailure: @escaping (NetworkError) -> Void
    )
    {
        session.request(
            endPoint,
            method: endPoint.method,
            parameters: endPoint.parameters,
            encoding: endPoint.encoding,
            headers: endPoint.headers
        ).response { afResponse in
            if let statusCode = afResponse.response?.statusCode {
                if (200..<300) ~= statusCode {
                    if let data = afResponse.data {
                        let object = try? JSONDecoder().decode(T.self, from: data)
                        if let object = object {
                            onSuccess(object)
                        }
                        else {
                            onFailure(.DECODE_ERROR)
                        }
                    }
                    else {
                        onFailure(.EMPTY_RESPONSE)
                    }
                }
                else {
                    onFailure(.INVALID_STATUS_CODE(statusCode))
                }
            }
            else {
                onFailure(.EMPTY_RESPONSE)
            }
        }
    }
}
