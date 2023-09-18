//
//  FirstTabCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation
import Combine
import SwiftUI


class FirstTabCoordinator: NSObject, Coordinator {
    
    var rootViewController: UINavigationController
    let viewModel = FirstTabViewModel()
    
    override init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        super.init()
        rootViewController.delegate = self

    }
    
    deinit {}
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.viewModel = viewModel
        vc.showDetailRequested = { [weak self] in
            self?.goToDetail()
        }
        vc.title = "First title"
        return vc
    }()
    
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: true)
    }
    
    func goToDetail() {
        let detailViewController = UIHostingController(rootView: FirstDetailView(viewModel: viewModel))
        rootViewController.pushViewController(detailViewController, animated: true)
        
    }
}

// Adding UINavigationControllerDelegate to check the state of the viewController
extension FirstTabCoordinator: UINavigationControllerDelegate {
   
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if viewController as? UIHostingController<FirstDetailView> != nil {
            print("Detail will be shown")
        } else if viewController as? FirstViewController != nil {
            print("First will be shown")
        }
    }
    
}
