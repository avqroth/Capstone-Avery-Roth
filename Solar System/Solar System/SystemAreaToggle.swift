//
//  SystemToggle.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/15/24.
//

import SwiftUI

struct SystemAreaToggle: View {
    @Environment(\.openImmersiveSpace) var openImmersiveScene
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveScene
    @State private var isShowingImmersive = false

    var body: some View {
        HStack {
            Button("View Solar System") {
                Task {
                    _ = await openImmersiveScene(id: "solarSystem")
                    isShowingImmersive = true
                }
            }.padding()

            Button("Exit Solar System") {
                Task {
                    await dismissImmersiveScene()
                    isShowingImmersive = false
                }
            }
        }.font(.title)
    }
}


#Preview {
    SystemAreaToggle()
}
