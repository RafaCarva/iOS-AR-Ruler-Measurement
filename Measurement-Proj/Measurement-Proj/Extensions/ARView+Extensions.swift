//
//  ARView+Extensions.swift
//  Measurement-Proj
//
//  Created by Rafael Carvalho on 15/09/22.
//

import Foundation
import ARKit
import RealityKit

extension ARView {
    
    // Configura os parêmetros da ajuda que aparece na tela para o user.
    func addCoachingOverlay() {
        let coachingView = ARCoachingOverlayView()
        coachingView.goal = .horizontalPlane
        coachingView.session = self.session
        coachingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(coachingView)
    }
    
}
