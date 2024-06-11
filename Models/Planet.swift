//
//  Planets.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import Foundation

struct Planet: Identifiable, Hashable {
    let id = UUID()
    let planetName: String
    let planetInfo: String
}

class PlanetModel: ObservableObject {
    let sun: String = "Sun"
    let mercury: String = "Mercury"
    let venus: String = "Venus"
    let earth: String = "Earth"
    let mars: String = "Mars"
    let jupiter: String = "Jupiter"
    let saturn: String = "Saturn"
    let uranus: String = "Uranus"
    let neptune: String = "Neptune"
}
