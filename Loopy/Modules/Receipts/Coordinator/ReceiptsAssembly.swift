//
//  ReceiptsAssembly.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 17.10.2022.
//

import UIKit

final class ReceiptsAssembly: BaseAssembly {
    
    private let storyboard = "Receipts"
    
    func configure() -> UIViewController {
        let model = ReceiptsViewModel()
        let view = ReceiptsView.controllerFromStoryboard(storyboard)
        
        view.tabBarItem = ReceiptsAssembly.tabBarCustomItem
        view.tabBarItem.imageInsets = .init(top: 12, left: 0, bottom: -12, right: 0)
        view.model = model
        return view
    }
    
    private static var tabBarCustomItem: UITabBarItem { UITabBarItem(title: nil,
                                                                     image: ImageConfig.receiptsTabBarImage,
                                                                     selectedImage: ImageConfig.receiptsTabBarImageSelected) }
    
}
