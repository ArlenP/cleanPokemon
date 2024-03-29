//
//  PokemonListView.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 21/11/23.
//

import SwiftUI

struct PokemonListView: View {
    var pokemon: PokemonEntity
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: pokemon.imageURL)) { image in
                image
                    .image?
                    .resizable()
            }
            .scaledToFit()
            .frame(width: 100, height: 100)

            Text(pokemon.name)
        }
    }
}
