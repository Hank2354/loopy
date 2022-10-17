//
//  TabBarAssembly.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 17.10.2022.
//

import UIKit

final class TabBarAssembly: BaseAssembly {
    
    func configure() -> UIViewController {
        let controller = UITabBarController()
        controller.tabBar.shadowImage = UIImage()
        controller.tabBar.backgroundColor = ColorConfig.TabBarColor
        controller.tabBar.clipsToBounds = true
        controller.tabBar.layer.cornerRadius = 40
        controller.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        return controller
    }
}
