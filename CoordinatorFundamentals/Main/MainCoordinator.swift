//
//  MainCoordinator.swift
//  CoordinatorFundamentals
//
//  Created by Mommo Sadeghi on 14/09/23.
//

import UIKit
import Foundation


class MainCoordinator: Coordinator {
    
    var rootViewController = UITabBarController()
    var childCoordinators = [Coordinator]()
    
    func start() {
        
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinators.append(firstCoordinator)
        let firstViewController = firstCoordinator.rootViewController
//        firstViewController.tabBarItem = UITabBarItem(title: "First",
//                                                      image: UIImage(systemName: "paperplane"),
//                                                      selectedImage: UIImage(systemName: "paperplane.fill"))
        setupTabBar(vc: firstViewController,
                    title: "First",
                    imageName: "paperplane",
                    selectedImageName: "peparplane.fill")
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinators.append(secondCoordinator)
        let secondViewController = secondCoordinator.rootViewController
//        secondViewController.tabBarItem = UITabBarItem(title: "Second",
//                                                       image: UIImage(systemName: <#T##String#>),
//                                                       selectedImage: <#T##UIImage?#>)
        
        setupTabBar(vc: secondViewController,
                    title: "Second",
                    imageName: "bell",
                    selectedImageName: "bell.fill")
        
        rootViewController.viewControllers = [firstViewController, secondViewController]
    }
    
    func setupTabBar(vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImage = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        vc.tabBarItem = tabBarItem
    }
}
