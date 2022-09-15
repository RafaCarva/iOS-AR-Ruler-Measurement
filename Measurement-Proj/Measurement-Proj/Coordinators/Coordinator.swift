//
//  Coordinator.swift
//  Measurement-Proj
//
//  Created by Rafael Carvalho on 15/09/22.
//

import Foundation
import RealityKit
import SwiftUI

class Coordinator {
    var arView: ARView?
    
    lazy var measurementButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("0.00", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = false
        return button
    }()
    
    lazy var resetButton: UIButton = {
        let button = UIButton(configuration: .gray())
        button.setTitle("Reset", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func handleTap(_ recognizer: UITapGestureRecognizer) {
        
    }
    
    func setupUI() {
        
        guard let arView = arView else { return }
        
        let stackView = UIStackView(arrangedSubviews: [measurementButton, resetButton])
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        arView.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: arView.centerXAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: arView.bottomAnchor, constant: -60).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
}
