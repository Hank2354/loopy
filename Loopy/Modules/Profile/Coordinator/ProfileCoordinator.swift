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
    
    fileprivate var initialVC: UIViewController { ProfileAssembly().configure() }
    
    // MARK: - Init
    init(navigationController: UINavigationController) {
        self.router = Router(navigationController: navigationController)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func start() {
        router.hideNavigationBar(true)
        router.setViewControllers([initialVC])
    }
}
