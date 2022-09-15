//
//  ContentView.swift
//  Measurement-Proj
//
//  Created by Rafael Carvalho on 15/09/22.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        // A extension tem a ARView
        let arView = ARView(frame: .zero)
        
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal]
        
        arView.session.run(config)
        arView.addGestureRecognizer(UITapGestureRecognizer(
            target: context.coordinator,
            action: #selector(Coordinator.handleTap)))
        
        context.coordinator.arView = arView
        context.coordinator.setupUI()
        
        arView.addCoachingOverlay()
        
        return arView
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
