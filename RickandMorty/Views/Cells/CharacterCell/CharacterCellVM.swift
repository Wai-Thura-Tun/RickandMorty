//
//  CharacterCellVM.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/10/24.
//

import Foundation
import RxRelay

class CharacterCellVM {
    let character: BehaviorRelay<CharacterVO>
    
    init(character: CharacterVO) {
        self.character = BehaviorRelay(value: character)
    }
}
