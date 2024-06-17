//
//  StarFieldView.swift
//  Capstone-Avery
//
//  Created by Avery Roth on 6/14/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct StarFieldView: View {
    var body: some View {
        
        RealityView { content in

            guard let resource = try? await TextureResource(named: "StarView") else {

                fatalError("Unable to load starview.")
            }
            var material = UnlitMaterial()
            material.color = .init(texture: .init(resource))

            let entity = Entity()
            entity.components.set(ModelComponent(
                mesh: .generateSphere(radius: 1000),
                materials: [material]
            ))

            entity.scale *= .init(x: -1, y: 1, z: 1)

            content.add(entity)
        }
    }
}


#Preview {
    StarFieldView()
}
