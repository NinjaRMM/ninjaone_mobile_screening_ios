//
//  AppMainCoordinator.swift
//  NinjaOneProject
//
//

import UIKit

class AppMainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []

    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let coordinator = HomeCoordinator(navigationController: navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
}
