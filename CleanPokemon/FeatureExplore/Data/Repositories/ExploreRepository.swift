//
//  ExploreRepository.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 22/11/23.
//

import Foundation

class ExploreRepository: PokeDexRepositoryProtocol {
    static let shared = ExploreRepository()
    
    private let exploreDataSource = PokeDexDataSource()
    
    func fetchPokemons(limit: Int, offset: Int) async throws -> [PokemonEntity] {
        let pokemonsListResponse: PokemonListResponseModel = try await exploreDataSource.fetchPokemons(limit: limit, offset: offset)
        let pokemonResponses: [PokemonResponseModel] = pokemonsListResponse.results
        let pokemonEntities: [PokemonEntity] = pokemonResponses.compactMap { pokemon in
            return PokemonEntity(pokemonResponse: pokemon)
        }
        
        return pokemonEntities
    }
}
