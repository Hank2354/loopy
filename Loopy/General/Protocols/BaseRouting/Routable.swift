//
//  Routable.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

protocol Routable: Controllable {
    
    var interactivePopManager: InteractivePopRecognizer { get }
    
    /// Present specifed module modaly with specifed style
    func present(_ module: UIViewController?, modalPresentationStyle: UIModalPresentationStyle, animated: Bool)
    /// Push specifed module with current navigation controller
    func push(_ module: UIViewController?, animated: Bool)
    
    /// Pop current module with current navigation controller
    func popModule(animated: Bool)
    /// Dismiss current module
    func dismissModule(animated: Bool)
    
    /// Set hide style for navigation bar if it available
    func hideNavigationBar(_ hideBar: Bool)
    
    /// Enable leftToRight swipe for controllers if navigation bar was hidden
    func enableInteractivePopWhenHiddenNavBar()
}

extension Routable {
    
    func present(_ module: UIViewController?, modalPresentationStyle: UIModalPresentationStyle, animated: Bool) {
        DispatchQueue.main.async {
            guard let view = getPresentedController(),
                  let module = module else { return }
            module.modalPresentationStyle = modalPresentationStyle
            view.present(module, animated: animated)
        }
    }
    
    func push(_ module: UIViewController?, animated: Bool) {
        DispatchQueue.main.async {
            guard let navigationController = navigationController, let module = module else { return }
            navigationController.pushViewController(module, animated: animated)
        }
    }
    
    func popModule(animated: Bool) {
        DispatchQueue.main.async {
            guard let navigationController = navigationController else { return }
            navigationController.popViewController(animated: animated)
        }
    }
    
    func dismissModule(animated: Bool) {
        DispatchQueue.main.async {
            guard let view = getPresentedController() else { return }
            view.dismiss(animated: true)
        }
    }
    
    func hideNavigationBar(_ hideBar: Bool) {
        DispatchQueue.main.async {
            guard let navigationController = navigationController else { return }
            navigationController.setNavigationBarHidden(hideBar, animated: false)
        }
    }
    
    func enableInteractivePopWhenHiddenNavBar() {
        DispatchQueue.main.async {
            guard let navigationController = navigationController else { return }
            navigationController.interactivePopGestureRecognizer?.delegate = interactivePopManager
        }
    }
}

// MARK: - Support
extension Routable {
    
    /// Get viewController which present current router
    fileprivate func getPresentedController() -> UIViewController? {
        if var childPresented = navigationController?.presentedViewController {
            while let presentedViewController = childPresented.presentedViewController {
                childPresented = presentedViewController
            }
            if let presented = childPresented.presentingViewController?.children.last,
               childPresented.isAboutToClose {
                return presented
            }
            return childPresented
        }
        guard let navigationController = navigationController?.viewControllers.first else { return nil }
        return navigationController
    }
}

fileprivate extension UIViewController {
    /// Return true if current view controler already start dismissing
    var isAboutToClose: Bool {
        return isBeingDismissed || isMovingFromParent || navigationController?.isBeingDismissed ?? false
    }
}
