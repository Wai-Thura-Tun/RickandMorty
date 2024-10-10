//
//  Encodable.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

extension Encodable {
    func asDict() -> [String: Any] {
        do {
            let encodedData = try JSONEncoder().encode(self)
            let dict = try JSONSerialization.jsonObject(with: encodedData, options: .fragmentsAllowed) as? [String: Any]
            guard let dict = dict else { return [:] }
            return dict
        }
        catch {
            return [:]
        }
    }
}
