//
//  ProfileView+NewsDelegate.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import UIKit

extension ProfileViewModel: NewsDelegate {
    
    func didSelectNews(_ news: NewsItem) {
        navigationFlow?(.news(news))
    }
}
