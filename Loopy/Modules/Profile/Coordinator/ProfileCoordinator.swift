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
        let flow = { [weak self] (child: ProfileCoordinator.NavigationFlow) in
            switch child {
            case let .news(newsItem):
                self?.showNewsViewer(newsItem)
            }
        }
        return flow
    }
}

extension ProfileCoordinator {
    
    func showNewsViewer(_ newsItem: NewsItem) {
        let coordinator = NewsCoordinator(navigationController: router.navigationController!)
        coordinator.dismissFlow = { [weak self] state in
            guard state else { return }
            self?.removeDependency(coordinator)
            self?.router.popModule(animated: true)
        }
        addDependency(coordinator)
        coordinator.start(with: newsItem)
    }
}

extension ProfileCoordinator {
    enum NavigationFlow {
        case news(NewsItem)
    }
}
