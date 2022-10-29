//
//  ProfileCoordinator.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

final class ProfileCoordinator: Coordinatable {
    
    var childCoordinators: [Coordinatable] = []
   
    private let router: Routable
    
    private weak var tabBarController: UITabBarController?
    
    // MARK: - Init
    init(tabBarController: UITabBarController) {
        self.router = Router(navigationController: UINavigationController())
        self.tabBarController = tabBarController
        router.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func start() {
        DispatchQueue.main.async {
            let assembly = ProfileAssembly()
            let controller = assembly.configure()
            self.router.setViewControllers([controller])
            let module = self.router.navigationController!
            
            
            if var viewControllers = self.tabBarController?.viewControllers, viewControllers.count > 0 {
                viewControllers.append(module)
                self.tabBarController?.setViewControllers(viewControllers, animated: false)
            } else {
                self.tabBarController?.setViewControllers([module], animated: false)
            }
        }
    }
}
