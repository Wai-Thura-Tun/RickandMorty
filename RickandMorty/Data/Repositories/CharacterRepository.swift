//
//  CharacterRepository.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation

class CharacterRepository {
    
    private let remoteDataSource: CharacterRemoteDataSource = .init()
    
    func getAllCharacters(
        page: Int = 1,
        name: String? = nil,
        status: CharacterStatus? = nil,
        species: String? = nil,
        type: String? = nil,
        gender: CharacterGender? = nil
    ) async throws -> [CharacterVO] {
        return try await remoteDataSource.getAllCharacters(
            page: page,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender
        )
    }
}
