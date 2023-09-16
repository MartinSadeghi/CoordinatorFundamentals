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


class FirstTabCoordinator: Coordinator {
    
    var rootViewController: UINavigationController
    let viewModel = FirstTabViewModel()
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
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
