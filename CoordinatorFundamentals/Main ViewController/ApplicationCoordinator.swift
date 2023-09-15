//
//  ApplicationCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation
import SwiftUI
import Combine

class ApplicationCoordinator: Coordinator {
    
    
    let window: UIWindow
    var childCoordinators = [Coordinator]()
    
    let hasSeenOnboarding = CurrentValueSubject<Bool, Never>(false)
    var subscription = Set<AnyCancellable>()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    
    func start() {
        hasSeenOnboarding.sink { [weak self] hasSeen in
            if hasSeen {
//                when the user has seen the OnboardingCoordinator
                let mainCoordinator = MainCoordinator()
                mainCoordinator.start()
                self?.childCoordinators = [mainCoordinator]
                self?.window.rootViewController = mainCoordinator.rootViewController
            } else {
                let onboardingCoordinator = OnboardingCoortinator()
                onboardingCoordinator.start()
                self?.childCoordinators = [onboardingCoordinator]
                self?.window.rootViewController = onboardingCoordinator.rootViewController
                
                
            }
        }.store(in: &subscription)
        
        
        
    }
    
    
}
