//
//  Controllable.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

protocol Controllable {
    var navigationController: UINavigationController? { get }
    
    func setViewControllers(_ controllers: [UIViewController])
}

extension Controllable {
    func setViewControllers(_ controllers: [UIViewController]) {
        DispatchQueue.main.async {
            navigationController?.setViewControllers(controllers, animated: false)
        }
    }
}
