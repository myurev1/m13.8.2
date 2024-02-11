//
//  AlertFile.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 11.02.2024.
//

import UIKit

public func createAlert() -> UIAlertController {
    let alert = UIAlertController(
        title: "Сообщение",
        message: "Это последнее окно",
        preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "Ok", style: .default))
    
    return alert
}
