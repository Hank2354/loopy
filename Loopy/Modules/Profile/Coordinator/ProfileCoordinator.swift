//
//  ProfileCoordinator.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import SwiftUI

final class ProfileCoordinator: Coordinator, Coordinatable {
    
    typealias Flow = ProfileCoordinator.NavigationFlow
    
    private weak var tabBarController: UITabBarController?
    
    // MARK: - Init
    init(tabBarController: UITabBarController) {
        super.init(navigationController: UINavigationController())
        self.tabBarController = tabBarController
        router.navigationController?.setNavigationBarHidden(true, animated: false)
        router.enableInteractivePopWhenHiddenNavBar()
    }
    
    func start() {
        let assembly = ProfileAssembly()
        let controller = assembly.configureWithFlow(makeFlow())
        self.router.setViewControllers([controller])
        let module = self.router.navigationController!
        
        
        if var viewControllers = self.tabBarController?.viewControllers, viewControllers.count > 0 {
            viewControllers.append(module)
            self.tabBarController?.setViewControllers(viewControllers, animated: false)
        } else {
            self.tabBarController?.setViewControllers([module], animated: false)
        }
    }
    
    func makeFlow() -> ((NavigationFlow) -> Void) {
        
    }
}

extension ProfileCoordinator {
    
    func showNewsViewer(_ newsItem: NewsItem) {
        
    }
}

extension ProfileCoordinator {
    enum NavigationFlow {
        case news(NewsItem)
    }
}
