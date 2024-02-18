//
//  ARViewUIKit.swift
//  SAMPLEIOSAPP
//
//  Created by Mangi Wimalaweera on 2024-02-17.
//

import Foundation
import SwiftUI
import UIKit
import ARKit
import RealityKit

struct ARViewUIKit : UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let arView = ARView(frame: .zero)
        let arChro = AnchorEntity(.plane(.horizontal, classification: .floor, minimumBounds: .one))
//        let box = ModelEntity(mesh: .generateBox(size: 0.5), materials: [SimpleMaterial(color: .red, isMetallic: false)])
//        anchor.addChild(box)
        do {
            let model = try ModelEntity.loadModel(named: "sophia")
            for anim in model.availableAnimations {
                model.playAnimation(anim.repeat(duration: .infinity), transitionDuration: 1.25, startsPaused: false)
            }
            arChro.addChild(model)
        } catch {
            
        }
        arView.scene.addAnchor(arChro)
        return arView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
