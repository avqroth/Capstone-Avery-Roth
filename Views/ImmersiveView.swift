//
//  ImmersiveView.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/3/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        
        StarFieldView()

        RealityView { content in

            if let scene = try? await Entity(named: "solarSystem", in: realityKitContentBundle) {
                content.add(scene)

                guard let resource = try? await EnvironmentResource(named: "ImageBasedLight") else { return }
                let iblComponent = ImageBasedLightComponent(source: .single(resource), intensityExponent: 0.25)
                scene.components.set(iblComponent)
                scene.components.set(ImageBasedLightReceiverComponent(imageBasedLight: scene))

            }
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView()
}
