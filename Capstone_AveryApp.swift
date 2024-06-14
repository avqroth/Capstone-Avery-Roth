//
//  Capstone_AveryApp.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/3/24.
//

import SwiftUI

@main
struct Capstone_AveryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(planetModel: PlanetModel(), planetView: PlanetView(planet: Planet(planetName: "", planetInfo: "")))
        }.windowStyle(.plain)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
