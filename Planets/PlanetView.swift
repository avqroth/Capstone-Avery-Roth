//
//  PlanetView.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetView: View {
    @State private var rotationAngle: Double = 360.0
    @State private var isAnimating: Bool = false
    var planet: Planet

    var planets: [Planet] = [
        Planet(planetName: "The Sun", planetInfo: """
               The Sun is the largest object in our solar system. Its diameter is about 865,000 miles (1.4 million kilometers). Its gravity holds the solar system together, keeping everything from the biggest planets to the smallest bits of debris in orbit around it.
               """, model: "Sun"),

        Planet(planetName: "Mercury", planetInfo: """
               The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter.
               """, model: "Mercury"),

        Planet(planetName: "Venus", planetInfo: """
               Venus is the second planet from the Sun, and Earth's closest planetary neighbor. It's the hottest planet in our solar system, and it is sometimes called Earth's twin.
               """, model: "Venus"),

        Planet(planetName: "Earth", planetInfo: """
               Earth – our home planet – is the third planet from the Sun, and the fifth largest planet. It's the only place we know of inhabited by living things.
               """, model: "Earth"),

        Planet(planetName: "Mars", planetInfo: """
               Mars – the fourth planet from the Sun – is a dusty, cold, desert world with a very thin atmosphere. This dynamic planet has seasons, polar ice caps, extinct volcanoes, canyons and weather.
               """, model: "Mars"),

        Planet(planetName: "Jupiter", planetInfo: """
               Jupiter is the largest planet in our solar system – if it were a hollow shell, 1,000 Earths could fit inside. It's also the oldest planet, forming from the dust and gases left over from the Sun's formation 4.5 billion years ago.
               """, model: "Jupiter"),

        Planet(planetName: "Saturn", planetInfo: """
               Saturn is the sixth planet from the Sun, and the second-largest planet in our solar system. Saturn is surrounded by a spectacular ring system, and it has dozens of moons.
               """, model: "Saturn"),

        Planet(planetName: "Uranus", planetInfo: """
               Uranus is the seventh planet from the Sun, and it has the third largest diameter of planets in our solar system. Uranus appears to spin sideways.
               """, model: "Uranus"),

        Planet(planetName: "Neptune", planetInfo: """
               Neptune is the eighth and most distant planet in our solar system. Dark, cold, and whipped by supersonic winds, ice giant Neptune is more than 30 times as far from the Sun as Earth.
               """, model: "Neptune")
    ]

    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack {
                    Rectangle()
                        .fill(.clear)
                        .scaledToFill()
                        .overlay {
                            Model3D(named: planet.model, bundle: realityKitContentBundle)
                                .padding(.bottom, 50)
                                .rotation3DEffect(
                                    Angle.degrees(rotationAngle),
                                    axis: (x: 0.0, y: 1.0, z: 0.0),
                                    anchor: .center

                                )

//                                .onAppear {
//                                    startRotation()
//                                }
//                                .onChange(of: planet.model) {
//                                    startRotation()
//                                }
                            VStack {
                                Text(planet.planetName)
                                    .font(.extraLargeTitle)
                                    .accessibilityLabel(Text("This is \(planet.planetName)"))
                                    .padding(.bottom, 300)
                                Text(planet.planetInfo)
                                    .font(.title)
                                    .accessibilityLabel(Text("Here we have the info of \(planet.planetInfo)"))
                                    .padding(25)
                                    .background(
                                        Rectangle()
                                            .fill(Color.black.opacity(0.25))
                                            .clipShape(.rect(cornerRadius: 30))
                                    )
                            }
                        } .padding(.bottom, 200)
                }
            }
        }
        Spacer()
    }
    private func startRotation() {
        withAnimation(Animation.linear(duration: 10).repeatForever()) {
            rotationAngle = 360.0
        }
    }
}

//struct CustomView: View {
//    var body: some view {
//        Model3D(named: “FileName”) { phase in   //file should be in proj
//        }
//    }
//}
//
//Model3d .overlay { … } // overlay on SwiftUI 3d objects
//Model3d .rotation3dEffect( Rotation3D(angle: …., axis: …)) // apply rotation

