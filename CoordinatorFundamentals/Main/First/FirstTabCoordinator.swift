//
//  FirstTabCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation
import Combine


class FirstTabCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
   
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    deinit {}
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First title"
        return vc
    }()
    
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: true)
    }
}
