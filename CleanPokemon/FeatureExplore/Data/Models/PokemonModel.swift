//
//  PokemonModel.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 21/11/23.
//

import Foundation

struct PokemonResponseModel: Decodable, Encodable {
    let name: String
    let url: String
}

