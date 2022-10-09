//
//  Controller+Storyboard.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

extension UIViewController {
    static func controllerInStoryboard(_ storyboard: UIStoryboard, identifier: String) -> Self {
        return instantiateControllerInStoryboard(storyboard, identifier: identifier)
    }
    
    static func controllerInStoryboard(_ storyboard: UIStoryboard) -> Self {
        return controllerInStoryboard(storyboard, identifier: nameOfClass())
    }
    
    static func controllerFromStoryboard(_ storyboard: String) -> Self {
        return controllerInStoryboard(UIStoryboard(name: storyboard, bundle: nil), identifier: nameOfClass())
    }
}

private extension UIViewController {
    static func instantiateControllerInStoryboard<T: UIViewController>(_ storyboard: UIStoryboard, identifier: String) -> T {
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
}

extension NSObject {
    static func nameOfClass() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
