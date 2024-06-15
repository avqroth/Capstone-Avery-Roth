//
//  NavigationArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI

struct NavigationArea: View {
    var planetModel: PlanetModel
    var planetView: PlanetView
    var planets: [Planet]

    var body: some View {
        ZStack {
            Image("Sun2")
                .resizable()
            VStack {
                Text("The Solar System")
                    .font(Font.custom("Avenir", size: 150))

                HStack(spacing: 25) {
                    ForEach(Area.allCases) { area in
                        NavigationLink(destination: destinationView(for: area)) {
                            Label(area.name, systemImage: "chevron.right")
                                .monospaced()
                                .font(.title)
                        }
                        .controlSize(.extraLarge)
                    }
                }
            }
        }
    }

    @ViewBuilder
    private func destinationView(for area: Area) -> some View {
        switch area {
        case .planets:
            PlanetArea(planetModel: planetModel, planetView: planetView, planets: [])
        case .system:
            SystemArea()
        }
    }
}


#Preview(immersionStyle: .full) {
    NavigationArea(planetModel: PlanetModel(), planetView: PlanetView(planet: Planet(planetName: "", planetInfo: "")), planets: [])
}
