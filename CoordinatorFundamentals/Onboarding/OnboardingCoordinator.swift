//
//  OnboardingCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation
import SwiftUI


class OnboardingCoortinator: Coordinator {
    var rootViewController = UIViewController()
    
    func start() {
        let view = OnboardingView {
            
        }
        rootViewController = UIHostingController(rootView: view)
    }
}
