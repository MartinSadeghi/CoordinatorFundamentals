//
//  OnboardingCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation
import SwiftUI
import Combine


class OnboardingCoortinator: Coordinator {
    
    var rootViewController = UIViewController()
    var hasSeenOnboarding: CurrentValueSubject<Bool, Never>
    
    init(hasSeenOnboarding: CurrentValueSubject<Bool, Never>) {
        self.hasSeenOnboarding = hasSeenOnboarding
    }
    
    
    func start() {
        let view = OnboardingView { [weak self] in
            self?.hasSeenOnboarding.send(true)
        }
        
        rootViewController = UIHostingController(rootView: view)
    }
}
