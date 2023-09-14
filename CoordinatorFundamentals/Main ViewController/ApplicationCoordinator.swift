//
//  ApplicationCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import SwiftUI


class ApplicationCoordinator: Coordinator {
    
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    
    func start() {
        window.rootViewController = ViewController()
    }
    
    
}
