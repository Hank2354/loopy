//
//  StatisticsAssembly.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 17.10.2022.
//

import UIKit

final class StatisticsAssembly: BaseAssembly {
    
    private let storyboard = "Statistics"
    
    func configure() -> UIViewController {
        let model = StatisticsViewModel()
        let view = StatisticsView.controllerFromStoryboard(storyboard)
        
        view.tabBarItem = StatisticsAssembly.tabBarCustomItem
        view.tabBarItem.imageInsets = .init(top: 12, left: 0, bottom: -12, right: 0)
        view.model = model
        return view
    }
    
    private static var tabBarCustomItem: UITabBarItem { UITabBarItem(title: nil,
                                                                     image: ImageConfig.statisticsTabBarImage,
                                                                     selectedImage: ImageConfig.statisticsTabBarImageSelected) }
    
}
