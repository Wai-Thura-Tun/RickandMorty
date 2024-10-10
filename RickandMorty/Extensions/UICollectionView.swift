//
//  UICollectionView.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/10/24.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func dequeueCell<cell: UICollectionViewCell>(_ cellType: cell.Type, for indexPath: IndexPath) -> cell {
        return self.dequeueReusableCell(withReuseIdentifier: String(describing: cellType), for: indexPath) as! cell
    }
    
    func registerCell<cell: UICollectionViewCell>(_ cellType: cell.Type, bundle: Bundle? = nil) {
        let identifier = String(describing: cellType)
        let nib = UINib(nibName: identifier, bundle: bundle)
        self.register(nib, forCellWithReuseIdentifier: identifier)
    }
}
