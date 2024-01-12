//
//  PokeDexRepositoryProtocol.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 21/11/23.
//

import Foundation

protocol PokeDexRepositoryProtocol {
    func fetchPokemons(limit: Int, offset: Int) async throws -> [PokemonEntity]
}
