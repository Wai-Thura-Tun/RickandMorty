//
//  Storyboarded.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/3/24.
//

import Foundation
import UIKit

protocol Storyboarded {
    static var storyboardName: String { get }
    static func instantiate(bundle: Bundle) -> Self
}

extension Storyboarded {
    static func instantiate(bundle: Bundle = Bundle.main) -> Self {
        let storyboard = UIStoryboard.init(name: storyboardName, bundle: bundle)
        return storyboard.instantiateViewController(withIdentifier: String(describing: Self.self)) as! Self
    }
}
