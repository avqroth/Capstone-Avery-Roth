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
        Button {
            Task {
                if isShowingImmersive {
                    await dismissImmersiveScene()
                } else {
                    await openImmersiveScene(id: "solarSystem")
                }
            }
        } label: {
            if isShowingImmersive {
                Label(
                    "Close Solar System",
                    systemImage: "arrow.down.right.and.arrow.up.left")
            } else {
                Text("View Solar System")
            }
        }.font(.custom("Avenir", size: 25))
            .padding()
    }
}

#Preview {
    SystemAreaToggle()
}
