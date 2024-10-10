//
//  UIColor.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/10/24.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        assert(hexString.count == 6, "Invalid Color Code")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        let red: CGFloat = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let blue: CGFloat = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let green: CGFloat = CGFloat(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
