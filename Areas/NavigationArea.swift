//
//  NavigationArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI

struct NavigationArea: View {
    let planetModel: PlanetModel
    let planets: PlanetView

    var body: some View {
        VStack {
            Text("The Solar System")
                .font(Font.custom("Avenir", size: 100))

            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {

                        if area == Area.planets {
                            PlanetArea(planetModel: planetModel, planets: planets)
                        }
                        else if area == Area.system {
                            SystemArea()
                        }

                    } label: {
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
