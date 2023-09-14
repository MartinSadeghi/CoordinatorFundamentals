//
//  SecondTabCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation


class SecondTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    lazy var secondViewController: SecondViewController = {
        let vc = SecondViewController()
        vc.title = "Second title"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondViewController], animated: true)
    }
}
