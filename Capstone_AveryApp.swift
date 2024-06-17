//
//  Capstone_AveryApp.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/3/24.
//

import SwiftUI

@main
struct Capstone_AveryApp: App {
    @State private var currentStyle: ImmersionStyle = .full

    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.plain)

        ImmersiveSpace(id: "solarSystem") {
            ImmersiveArea()
        }.immersionStyle(selection: $currentStyle, in: .full)
    }
}
