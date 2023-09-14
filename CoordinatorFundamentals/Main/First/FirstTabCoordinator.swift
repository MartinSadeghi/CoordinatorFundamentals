//
//  FirstTabCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation


class FirstTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First title"
        return vc
    }()
    
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: true)
    }
}
