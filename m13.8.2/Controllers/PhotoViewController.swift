//
//  ViewController.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 10.02.2024.
//

import UIKit

class PhotoViewController: UIViewController {
    
    let nextButton = UIButton()
    let viewButton = ConstraintsButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewButton.setupConstraints(controllerButton: nextButton, view: view)
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        navigationItem.title = "Photo 1"
        nextButton.setTitle("Button", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addAction(UIAction(handler: { [weak self] _ in
            self?.navigationController?.pushViewController(Photo2ViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }


}

