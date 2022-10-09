//
//  Router.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

final class Router: Routable {
    
    let navigationController: UINavigationController?
  
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
