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
        return view
    }
    
    private static let tabBarImage = UIImage(named: "TB_home_inactive")?.withRenderingMode(.alwaysOriginal)
    private static let tabBarImageSelected = UIImage(named: "TB_home_active")?.withRenderingMode(.alwaysOriginal)
    
    private static var tabBarCustomItem: UITabBarItem { UITabBarItem(title: nil,
                                                                     image: ProfileAssembly.tabBarImage,
                                                                     selectedImage: ProfileAssembly.tabBarImageSelected) }
    
}
