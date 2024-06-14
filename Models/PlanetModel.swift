//
//  Planets.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import Foundation

struct Planet: Identifiable, Hashable {
    var id = UUID()
    var planetName: String
    var planetInfo: String
}

struct PlanetModel: Identifiable {
    let id = UUID()
    let sun = "Sun"
    let mercury = "Mercury"
    let venus = "Venus"
    let earth = "Earth"
    let mars = "Mars"
    let jupiter = "Jupiter"
    let saturn = "Saturn"
    let uranus = "Uranus"
    let neptune = "Neptune"
}
