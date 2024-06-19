//
//  ImmersiveArea.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/17/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveArea: View {
    @State private var isShowingImmersive = false

    var body: some View {
        StarFieldView()
            .onAppear {
                isShowingImmersive = true
                var announcement = AttributedString("Entered the Solar System")
                announcement.accessibilitySpeechAnnouncementPriority = .high
                AccessibilityNotification.Announcement(announcement).post()
            }
            .onDisappear {
                isShowingImmersive = false
            }

        Model3D(named: "Planets", bundle: realityKitContentBundle)

        RealityView { content in
//            Tried to add lighting, sadly I wasn't able to figure out how to add it... I apologize if it is a little dark...
            if let scene = try? await
                Entity(named: "solarSystem") {  content.add(scene)

                guard let resource = try? await
                        EnvironmentResource(named: "Sunlight") else { return }
                let iblComponent = ImageBasedLightComponent(source: .single(resource), intensityExponent: 2.0)
                scene.components.set(iblComponent)
                scene.components.set(ImageBasedLightReceiverComponent(imageBasedLight: scene))
            }
        }
    }
}

#Preview {
    ImmersiveArea()
}
