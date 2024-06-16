//
//  NavigationArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI

struct NavigationArea: View {
    var planetView: PlanetView
    var planets: [Planet]

    var body: some View {
        ZStack {
            Image("Sun")
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
                        }.controlSize(.extraLarge)
                    }
                }
            }
        }
    }

    @ViewBuilder
    private func destinationView(for area: Area) -> some View {
        switch area {
        case .planets:
            PlanetArea(planetView: planetView, planets: [], planet: Planet(planetName: "", planetInfo: "", model: ""))
        case .system:
            SystemArea()
        }
    }
}


#Preview(immersionStyle: .full) {
    NavigationArea(planetView: PlanetView(planet: Planet(planetName: "", planetInfo: "", model: "")), planets: [])
}
