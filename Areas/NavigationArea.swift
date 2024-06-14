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

    var body: some View {
        VStack {
            Text("The Solar System")
                .font(Font.custom("Avenir", size: 100))

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
