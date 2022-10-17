//
//  FitnessAssembly.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 17.10.2022.
//

import UIKit

final class FitnessAssembly: BaseAssembly {
    
    private let storyboard = "Fitness"
    
    func configure() -> UIViewController {
        let model = FitnessViewModel()
        let view = FitnessView.controllerFromStoryboard(storyboard)
        
        view.tabBarItem = FitnessAssembly.tabBarCustomItem
        view.tabBarItem.imageInsets = .init(top: 12, left: 0, bottom: -12, right: 0)
        view.model = model
        return view
    }
    
    private static var tabBarCustomItem: UITabBarItem { UITabBarItem(title: nil,
                                                                     image: ImageConfig.fitnessTabBarImage,
                                                                     selectedImage: ImageConfig.fitnessTabBarImageSelected) }
    
}
