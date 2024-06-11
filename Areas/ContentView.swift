//
//  ContentView.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/3/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    let planetModel: PlanetModel
    var planets: PlanetView

    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var body: some View {
        VStack {
            NavigationStack {
                NavigationArea(planetModel: planetModel, planets: planets)
            }
        }
    }
}

