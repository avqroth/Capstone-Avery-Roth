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
    @State private var selectedPlanet: Planet? = nil
    var planetModel: PlanetModel
    var planetView: PlanetView
    var planets: [Planet]

    var body: some View {
        VStack {
            TabView {
                NavigationSplitView {
                    List(planetView.planets, selection: $selectedPlanet) { planet in
                        NavigationLink(destination: {
                            if let selectedPlanet = selectedPlanet {
                                PlanetView(planet: selectedPlanet, planetModel: planetModel)
                            } else {
                                Text("Pick a planet to learn more!")
                            }
                        }) {
                            Text(planet.planetName)
                        }
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
