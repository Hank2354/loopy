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
        controller.tabBar.backgroundColor = ColorConfig.tabBarColor
        controller.tabBar.clipsToBounds = true
        controller.tabBar.layer.cornerRadius = 40
        controller.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        configureAppearance(controller.tabBar)
        return controller
    }
    
    // After iOS 15.0 version tabBar can be transparent if viewController have scroll elements
    // This configuration fix it
    private func configureAppearance(_ tabBar: UITabBar) {
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = ColorConfig.tabBarColor
            
            // Set appearance with opaque preset and current background color for us TabBar
            tabBar.standardAppearance = appearance
            tabBar.scrollEdgeAppearance = appearance
        }
        
    }
}
