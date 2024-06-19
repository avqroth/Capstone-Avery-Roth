//
//  PlanetArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI

struct PlanetArea: View {
    @State private var isShowingImmersive = false
    @State private var selectedPlanet: Planet? = nil
    var planetView: PlanetView
    var planets: [Planet]
    var planet: Planet
    
    
    var body: some View {
        ZStack {
            VStack {
                NavigationSplitView {
                    List(planetView.planets, selection: $selectedPlanet) { planet in
                        NavigationLink(planet.planetName, value: planet)
                    } .font(.largeTitle)
                        .hoverEffect()
                } detail: {
                    if let selectedPlanet = selectedPlanet {
                        PlanetView(planet: selectedPlanet)
                        
                    } else {
                        ScrollView {
                            Text("Welcome to the Planet List!")
                                .font(.extraLargeTitle)
                                .padding(.bottom, 20)
                            Text(planet.planetFact)
                                .font(.title)
                        }
                    }
                }
            }
        }
        .onAppear {
            isShowingImmersive = true
            var announcement = AttributedString("Entered the Planet List area.")
            announcement.accessibilitySpeechAnnouncementPriority = .high
            AccessibilityNotification.Announcement(announcement).post()
        }
        .onDisappear {
            isShowingImmersive = false
        }
    }
}

public enum Visibility {
    case hidden
}