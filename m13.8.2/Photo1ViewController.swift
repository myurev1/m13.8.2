//
//  ViewController.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 10.02.2024.
//

import UIKit

class Photo2ViewController: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
//        setupViews()
//        setupConstraints()
        // Do any additional setup after loading the view.
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        nextButton.setTitle("To photo 2", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
//        photo1Button.addAction(UIAction(handler: { [weak self] _ in
//            self?.navigationController?.pushViewController(viewController(), animated: true)
//        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }
    
    private func setupConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

