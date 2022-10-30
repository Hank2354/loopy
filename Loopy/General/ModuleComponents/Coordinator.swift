//
//  Coordinator.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 30.10.2022.
//

import Foundation
import UIKit

class Coordinator {
    var childCoordinators: [Coordinatable] = []
    
    var dismissFlow: (Bool) -> Void = { _ in }
    
    var router: Routable
    
    init(navigationController: UINavigationController) {
        router = Router(navigationController: navigationController)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // Add only unique object
    func addDependency(_ coordinator: Coordinatable) {
        for element in childCoordinators {
            if element === coordinator { return }
        }
        childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinatable?) {
        guard !childCoordinators.isEmpty, let coordinator = coordinator else { return }
        
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
