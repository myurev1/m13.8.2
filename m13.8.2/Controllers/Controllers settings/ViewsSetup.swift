//
//  ViewsSetup.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 11.02.2024.
//

import UIKit

class ViewsSetup {
    public func setupViews(view: UIView, button: UIButton, navigation: UINavigationController) {
        view.backgroundColor = .white
        navigation.title = "Photo 1"
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addAction(UIAction(handler: { [weak self] _ in
            self?.navigationController?.pushViewController(Photo2ViewController(), animated: true)
        }), for: .touchUpInside)
        view.addSubview(nextButton)
    }
}
