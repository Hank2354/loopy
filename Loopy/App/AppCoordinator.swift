//
//  AppCoordinator.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

final class AppCoordinator: Coordinatable {
    
    var childCoordinators: [Coordinatable] = []
    
    private let window: UIWindow
    
    private let router: Routable = Router(navigationController: UINavigationController())
    
    // MARK: - Init
    /// Init app coordinator with current application window
    init(window: UIWindow) {
        self.window = window
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    /// Starting main module for application window
    func start() {
        configureMainModule()
        
        window.rootViewController = router.navigationController
        window.makeKeyAndVisible()
    }
    
    private func configureMainModule() {
        let module = ProfileCoordinator(navigationController: router.navigationController!)
        childCoordinators.append(module)
        module.start()
    }
}
