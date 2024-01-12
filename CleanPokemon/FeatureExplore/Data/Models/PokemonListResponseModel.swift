//
//  PokemonListResponseModel.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 21/11/23.
//

import Foundation

struct PokemonListResponseModel: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [PokemonResponseModel]
}
