//
//  ContentView.swift
//  CleanPokemon
//
//  Created by Arlen Peña on 21/11/23.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
