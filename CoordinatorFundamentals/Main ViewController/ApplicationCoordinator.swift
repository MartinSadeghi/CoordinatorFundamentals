//
//  ApplicationCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation
import SwiftUI

class ApplicationCoordinator: Coordinator {
    
    
    let window: UIWindow
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    
    func start() {
//        let onboardingCoordinator = OnboardingCoortinator()
//        onboardingCoordinator.start()
//        self.childCoordinators = [onboardingCoordinator]
//        window.rootViewController = onboardingCoordinator.rootViewController
        
    let mainCoordinator = MainCoordinator()
        mainCoordinator.start()
        childCoordinators = [mainCoordinator]
        window.rootViewController = mainCoordinator.rootViewController
        
    }
    
    
}
