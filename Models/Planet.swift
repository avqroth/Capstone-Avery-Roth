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
    var model: String
    let planetFact = """
The inner, rocky planets are Mercury, Venus, Earth, and Mars. These worlds also are known as terrestrial planets because they have solid surfaces. Mercury, Earth, and Mars are currently being explored by spacecraft. Two rovers are on the surface of Mars. NASA's rover – Perseverance – landed on Mars on Feb. 18, 2021. Three missions are in development to return to Venus.
"""
    var isShowingModel = false
}

//struct PlanetModel: Identifiable {
//    let id = UUID()
//    let model: String
////    let planetFact = """
////The inner, rocky planets are Mercury, Venus, Earth, and Mars. These worlds also are known as terrestrial planets because they have solid surfaces. Mercury, Earth, and Mars are currently being explored by spacecraft. Two rovers are on the surface of Mars. NASA's rover – Perseverance – landed on Mars on Feb. 18, 2021. Three missions are in development to return to Venus.
////"""
//}
