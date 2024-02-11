//
//  ViewController.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 10.02.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let messageButton = UIButton()
    let viewButton = ConstraintsButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewButton.setupConstraints(controllerButton: messageButton, view: view)
    }
    
    private func setupViews() {
        let alm = AlertMessage()
        view.backgroundColor = .white
        navigationItem.title = "Profile"
        messageButton.setTitle("Button", for: .normal)
        messageButton.setTitleColor(.black, for: .normal)
        messageButton.addAction(UIAction(handler: { [weak self] _ in
            let alert = alm.createAlert(windowName: .profile)
            self?.present(alert, animated: true, completion: nil)
        }), for: .touchUpInside)
        view.addSubview(messageButton)
    }
}

