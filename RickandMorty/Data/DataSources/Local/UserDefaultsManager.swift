//
//  UserDefault.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/4/24.
//

import Foundation

extension UserDefaults {
    static let key: String = "OldUser"
    
    static func setUser() {
        standard.set(true, forKey: key)
    }
    
    static func getUser() -> Bool {
        standard.bool(forKey: key)
    }
}
