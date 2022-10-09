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
        view.model = model
        return view
    }
    
}
