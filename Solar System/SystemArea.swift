//
//  SystemView.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/10/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SystemArea: View {

    var body: some View {
        HStack(spacing: 60) {
            VStack(alignment: .center) {
                Text("The Solar System")
                    .font(.custom("Avenir", size: 75))
                    .padding(.bottom, 20)

                Text("""
Our solar system is made up of a star, eight planets, and countless smaller bodies such as dwarf planets, asteroids, and comets. Our solar system orbits the center of the Milky Way galaxy at about 515,000 mph (828,000 kph). We're in one of the galaxy's four spiral arms.
""")
                .font(.custom("Avenir", size: 35))
                .padding(.leading, 100)
                .padding(.trailing, 100)

                SystemAreaToggle()
            }
        } .background(
            Rectangle()
                .fill(Color.black)
                .scaledToFill()
        )
    }
}

#Preview {
    SystemArea()
}
