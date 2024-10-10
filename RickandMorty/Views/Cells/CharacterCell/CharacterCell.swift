//
//  CharacterCell.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/10/24.
//

import UIKit
import RxSwift

class CharacterCell: UICollectionViewCell {

    private let disposeBag = DisposeBag()
    
    var vm: CharacterCellVM! {
        didSet {
            bindVM()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        disposeBag.insert(Disposables.create())
    }
    
    private func bindVM() {
        
    }

    
}
