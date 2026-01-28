//
//  ListExample.swift
//  iOS-course
//
//  Created by Sebastian Lopez Mazo on 27/01/26.
//

import SwiftUI

let pokemons = [
    Pokemon(name:"Pikachu"),
    Pokemon(name:"Charmander"),
    Pokemon(name:"Eevee"),
    Pokemon(name:"Garchomp"),
    Pokemon(name:"Ralts")
]

let digimons = [
    Digimon(name:"Agumon"),
    Digimon(name:"Greymon"),
    Digimon(name:"Wargreymon"),
    Digimon(name:"Gabumon"),
    Digimon(name:"Garurumon")
]


struct ListExample: View {
    var body: some View {
        List{
            Section(header:Text("Pokemons")){
                ForEach(pokemons,id:\.name) { pokemon in
                    Text(pokemon.name)
                }
            }
            Section(header: Text("Digimons")){
                ForEach(digimons) { digimon in
                    Text(digimon.name)
                }
            }
        }
        
//        List{
//            ForEach(digimons) { digimon in
//                Text(digimon.name)
//            }
//        }.listStyle(.grouped)
//    }
}


struct Pokemon {
    let name:String
}

struct Digimon: Identifiable{
    var id = UUID()
    let name:String
}

#Preview {
    ListExample()
}
