//
//  NavigationArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI

struct NavigationArea: View {
    var body: some View {
        VStack {
            Text("The Solar System")
                .font(Font.custom("Avenir", size: 100))
                .padding(.all)

            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .font(.system(size: 50))

                        if area == Area.thePlanets {
                            PlanetArea()
                        }
                        else if area == Area.theSystem {
                            SystemArea()
                        }
                        
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .font(.title)
                    }

                }
            }
        }
    }
}

#Preview {
    NavigationArea()
}
