//
//  PlanetArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetArea: View {
    @State var selectedPlanet: Planet? = nil
    let planetModel: PlanetModel
    var planets: PlanetView

    var body: some View {
        VStack {
            TabView {
                NavigationSplitView {
                    List (planets.planets, selection: $selectedPlanet) { planet in
                        NavigationLink(planet.planetName, value: planet)
                    }
                } detail: {
                    if let selectedPlanet = selectedPlanet {
                        PlanetView(planet: selectedPlanet, planetModel: planetModel)
                    } else {
                        Text("Pick a planet to learn more!")
                    }
                }
            }
        }
    }
}


//#Preview {
//    PlanetArea()
//}
