//
//  UIView.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/10/24.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(
        title: String,
        message: String? = nil
    )
    {
        let alertVC = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertVC.addAction(okAction)
        present(self, animated: true)
    }
}
