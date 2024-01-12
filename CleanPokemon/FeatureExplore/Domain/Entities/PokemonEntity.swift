//
//  PokemonEntity.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 21/11/23.
//

import Foundation

struct PokemonEntity: Hashable {
    let id: Int
    let name: String
    var imageURL: String
    
    init?(pokemonResponse: PokemonResponseModel) {
        guard let urlComponents = URLComponents(string: pokemonResponse.url),
              let idString = urlComponents.path.split(separator: "/").last,
              let id = Int(idString) else {return nil}
        
        self.id = id
        self.name = pokemonResponse.name
        self.imageURL = Constants.APIEndpoint.getPokemonImage(id: id).url?.absoluteString ?? ""
    }
    
    init?(pokemonDetailResponse: PokemonResponseModel) {
            guard let urlComponents = URLComponents(string: pokemonDetailResponse.url),
                  let idString = urlComponents.path.split(separator: "/").last,
                  let id = Int(idString) else {
                    return nil
            }
            
            self.id = id
            self.name = pokemonDetailResponse.name
            self.imageURL = Constants.APIEndpoint.getPokemonImage(id: id).url?.absoluteString ?? ""
        }
}
