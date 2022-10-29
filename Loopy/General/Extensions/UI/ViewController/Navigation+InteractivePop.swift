//
//  Navigation+InteractivePop.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import UIKit

extension UINavigationController {
    
    /// User custon interactivePopGestureRecodnizerDelegate class for control swipe to pop top controller in current navigation controller
    /// Enabled leftToRight swipe in navigationBar hidden for top controller
    func enableInteractivePopGestureWhenNavigationBarHidden() {
        let popDelegate = InteractivePopRecognizer(controller: self)
        interactivePopGestureRecognizer?.delegate = popDelegate
    }
}
