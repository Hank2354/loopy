//
//  TabBarCoordinator.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 17.10.2022.
//

import UIKit

final class TabBarCoordinator: Coordinatable {
    
    var childCoordinators: [Coordinatable] = []
   
    private let router: Routable
    
    fileprivate let startingController: TabBarCoordinator.TabItem
    
    // MARK: - Init
    init(navigationController: UINavigationController, startingController: TabBarCoordinator.TabItem = .profile) {
        self.startingController = startingController
        self.router = Router(navigationController: navigationController)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func start() {
        router.hideNavigationBar(true)
        let module = createModule()
        router.setViewControllers([module])
    }
}

extension TabBarCoordinator {
    func createModule() -> UITabBarController {
        let assembly = TabBarAssembly()
        let controller = assembly.configure()
        guard let tabBar = controller as? UITabBarController else { fatalError() }
        
        // Set view controllers for own tabBar
        TabItem.allCases.forEach { makeItemModule($0, into: tabBar) }
        // Set initial VC
        tabBar.selectedIndex = startingController.rawValue
        
        TabBarCustomizator.addCustomizationTo(tabBar)
        
        return tabBar
    }
    
    func makeItemModule(_ item: TabBarCoordinator.TabItem, into tabBar: UITabBarController) {
        var coordinator: Coordinatable
        switch item {
        case .profile:
            coordinator = ProfileCoordinator(tabBarController: tabBar)
        case .receipts:
            coordinator = ProfileCoordinator(tabBarController: tabBar)
        case .fitness:
            coordinator = ProfileCoordinator(tabBarController: tabBar)
        case .statistics:
            coordinator = ProfileCoordinator(tabBarController: tabBar)
        }
        coordinator.start()
        childCoordinators.append(coordinator)
    }
}

// TabBar Navigation flow
extension TabBarCoordinator {
    enum TabItem: Int, CaseIterable {
        case profile
        case receipts
        case fitness
        case statistics
    }
}
