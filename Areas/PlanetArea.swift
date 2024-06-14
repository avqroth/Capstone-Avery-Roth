//
//  PlanetArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI

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
                        }) {
                            Text(planet.planetName)
                        }
                    }
                } detail: {
                    if selectedPlanet != nil {
                        PlanetView(planet: Planet(planetName: "", planetInfo: ""), planetModel: planetModel, planets: [])
                    } else {
                        Text("Pick a planet to learn more!")
                    }
                }
            }
        }
    }
}
