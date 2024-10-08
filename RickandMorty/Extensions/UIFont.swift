//
//  UIFont.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/10/24.
//

import Foundation
import UIKit

extension UIFont {
    enum FontFamily: String {
        case bold = "Poppins-Bold"
        case semibold = "Poppins-SemiBold"
        case medium = "Poppins-Medium"
        case regular = "Poppins-Regular"
        
        func of(size: CGFloat) -> UIFont {
            return UIFont(name: self.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
    
    //MARK: Regular Fonts
    static var popR8: UIFont { FontFamily.regular.of(size: 8) }
    static var popR10: UIFont { FontFamily.regular.of(size: 10) }
    static var popR12: UIFont { FontFamily.regular.of(size: 12) }
    static var popR13: UIFont { FontFamily.regular.of(size: 13) }
    static var popR14: UIFont { FontFamily.regular.of(size: 14) }
    static var popR15: UIFont { FontFamily.regular.of(size: 15) }
    static var popR16: UIFont { FontFamily.regular.of(size: 16) }
    static var popR17: UIFont { FontFamily.regular.of(size: 17) }
    static var popR25: UIFont { FontFamily.regular.of(size: 25) }
    
    //MARK: Bold Fonts
    static var popB8: UIFont { FontFamily.bold.of(size: 8) }
    static var popB10: UIFont { FontFamily.bold.of(size: 10) }
    static var popB12: UIFont { FontFamily.bold.of(size: 12) }
    static var popB14: UIFont { FontFamily.bold.of(size: 14) }
    static var popB15: UIFont { FontFamily.bold.of(size: 15) }
    static var popB16: UIFont { FontFamily.bold.of(size: 16) }
    static var popB20: UIFont { FontFamily.bold.of(size: 20) }
    static var popB24: UIFont { FontFamily.bold.of(size: 24) }
    static var popB28: UIFont { FontFamily.bold.of(size: 28) }
    static var popB32: UIFont { FontFamily.bold.of(size: 32) }
        
    //MARK: SemiBold Fonts
    static var popSemiB8: UIFont { FontFamily.bold.of(size: 8) }
    static var popSemiB10: UIFont { FontFamily.bold.of(size: 10) }
    static var popSemiB11: UIFont { FontFamily.bold.of(size: 11) }
    static var popSemiB12: UIFont { FontFamily.bold.of(size: 12) }
    static var popSemiB14: UIFont { FontFamily.bold.of(size: 14) }
    static var popSemiB15: UIFont { FontFamily.bold.of(size: 15) }
    static var popSemiB16: UIFont { FontFamily.bold.of(size: 16) }
    static var popSemiB20: UIFont { FontFamily.bold.of(size: 20) }
    static var popSemiB24: UIFont { FontFamily.bold.of(size: 24) }
    static var popSemiB28: UIFont { FontFamily.bold.of(size: 28) }
    static var popSemiB32: UIFont { FontFamily.bold.of(size: 32) }
        
    //MARK: Medium Fonts
    static var popM10: UIFont { FontFamily.medium.of(size: 10) }
    static var popM11: UIFont { FontFamily.medium.of(size: 11) }
    static var popM12: UIFont { FontFamily.medium.of(size: 12) }
    static var popM14: UIFont { FontFamily.medium.of(size: 14) }
}
