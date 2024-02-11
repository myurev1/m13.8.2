//
//  ConstraintsButton.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 11.02.2024.
//

import UIKit

class ConstraintsButton {
    public func setupConstraints(controllerButton: UIButton, view: UIView) {
        controllerButton.translatesAutoresizingMaskIntoConstraints = false
        controllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        controllerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

