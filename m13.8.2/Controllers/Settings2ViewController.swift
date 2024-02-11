//
//  ViewController.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 10.02.2024.
//

import UIKit

class Settings2ViewController: UIViewController {
    
    let nextButton = UIButton()
    let viewButton = ConstraintsButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewButton.setupConstraints(controllerButton: nextButton, view: view)
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        navigationItem.title = "Settings 2"
        nextButton.setTitle("Button", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addAction(UIAction(handler: { [weak self] _ in
            self?.navigationController?.pushViewController(Settings3ViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }


}

