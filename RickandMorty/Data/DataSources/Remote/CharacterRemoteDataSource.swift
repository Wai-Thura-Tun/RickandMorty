//
//  RickandMortyRemoteDataSource.swift
//  RickandMorty
//
//  Created by Wai Thura Tun on 10/5/24.
//

import Foundation

class CharacterRemoteDataSource {
    private let network: NetworkManager = .shared
    
    func getAllCharacters(
        page: Int,
        name: String?,
        status: CharacterStatus?,
        species: String?,
        type: String?,
        gender: CharacterGender?
    ) async throws -> [CharacterVO] {
        return try await withCheckedThrowingContinuation { continuation in
            let request = CharacterRequest.init(
                page: page,
                name: name,
                status: status,
                species: species,
                type: type,
                gender: gender
            )
            network.request(endPoint: .Characters(request)) { (response: CharacterResponse) in
                continuation.resume(returning: response.results)
            } onFailure: { error in
                continuation.resume(throwing: error)
            }
        }
    }
}
