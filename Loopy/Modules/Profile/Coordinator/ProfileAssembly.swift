//
//  ProfileAssembly.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

final class ProfileAssembly: BaseAssembly {
    
    private let storyboard = "Profile"
    
    func configure() -> UIViewController {
        let model = ProfileViewModel()
        let view = ProfileView.controllerFromStoryboard(storyboard)
        
        view.tabBarItem = ProfileAssembly.tabBarCustomItem
        view.tabBarItem.imageInsets = .init(top: 12, left: 0, bottom: -12, right: 0)
        view.model = model
        model.output = view
        return view
    }
    
    func configureWithFlow(_ flow: @escaping (ProfileCoordinator.NavigationFlow) -> Void) -> UIViewController {
        let model = ProfileViewModel()
        model.navigationFlow = flow
        let view = ProfileView.controllerFromStoryboard(storyboard)
        
        view.tabBarItem = ProfileAssembly.tabBarCustomItem
        view.tabBarItem.imageInsets = .init(top: 12, left: 0, bottom: -12, right: 0)
        view.model = model
        model.output = view
        return view
    }
    
    private static var tabBarCustomItem: UITabBarItem { UITabBarItem(title: nil,
                                                                     image: ImageConfig.homeTabBarImage,
                                                                     selectedImage: ImageConfig.homeTabBarImageSelected) }
    
}
