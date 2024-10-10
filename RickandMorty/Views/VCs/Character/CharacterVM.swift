//
//  CharacterVM.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation
import RxRelay
import RxCocoa
import RxSwift

class CharacterVM {
    
    private let repository: CharacterRepository = .init()
    
    let characters: BehaviorRelay<[CharacterVO]> = .init(value: [])
    let error: PublishSubject<String> = .init()
    
    func getCharacters() {
        Task {
            do {
                let data = try await repository.getAllCharacters()
                characters.accept(data)
            }
            catch let fetchError {
                error.onNext(fetchError.localizedDescription)
            }
        }
    }
}
