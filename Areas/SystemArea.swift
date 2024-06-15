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
    @Environment(\.openImmersiveSpace) var openImmersiveScene
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveScene
    @State private var isShowingImmersive = false

    var body: some View {
        Text("Solar System")

        HStack {
            Button("View Solar System") {
                Task {
                    let result = await openImmersiveScene(id: "solarSystem")
                    isShowingImmersive = true
                    if case .error = result {
                        print("Error occurred")
                        isShowingImmersive = false
                    }
                }
            } .font(.custom("Avenir", size: 25))
                .padding(.bottom)

            Button("Close Solar System") {
                Task {
                    await dismissImmersiveScene()
                    print("Close completed...")
                    isShowingImmersive = false
                }
            } .font(.custom("Avenir", size: 25))
        }
    }
}

#Preview {
    SystemArea()
}
