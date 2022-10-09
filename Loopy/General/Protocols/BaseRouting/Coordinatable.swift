//
//  Coordinatable.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import Foundation

protocol Coordinatable: AnyObject {
    
    var childCoordinators: [Coordinatable] { get set }
    
    func start()
}

extension Coordinatable {
    
    /// Remove child coordinator from childs array
    func remove<T: Coordinatable>(_ type: T.Type) {
        guard childCoordinators.isEmpty == false else { return }
        let removingCoordinator = childCoordinators.compactMap { $0 as? T }.first
        
        for (index, element) in childCoordinators.enumerated() {
            if element === removingCoordinator {
                childCoordinators.remove(at: index)
            }
        }
    }
    
    /// Check the specifed coordinator type for existence in childs array
    func contains<T: Coordinatable>(_ type: T.Type) -> Bool {
        guard childCoordinators.isEmpty == false else { return false }
        let currentCoordinator = childCoordinators.compactMap { $0 as? T }.first
        
        return childCoordinators.contains { $0 === currentCoordinator }
    }
}

// MARK: - Notification center extension
extension Coordinatable {
    
    /// Add self for observer for notification with specifed name
    func addObserver(selector: Selector, name: NSNotification.Name?) {
        notificationCenter().addObserver(self, selector: selector, name: name, object: nil)
    }
    
    private func notificationCenter() -> NotificationCenter {
        return NotificationCenter.default
    }
}
