//
//  AlertCreater.swift
//  m13.8.2
//
//  Created by Максим Юрьев on 11.02.2024.
//

import UIKit

class AlertMessage {
    
    enum tabBarName {
        case profile
        case photo
        case settings
        
        func getName() -> String {
            switch self {
            case .profile:
                return "Last window in profile"
            case .photo:
                return "Last window in photo"
            case .settings:
                return "Last window in settings"
            }
        }
    }
    
    public func createAlert(windowName: tabBarName) -> UIAlertController {
        let alert = UIAlertController(
            title: "Message",
            message: windowName.getName(),
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        return alert
    }
}
