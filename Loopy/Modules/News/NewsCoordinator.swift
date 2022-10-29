//
//  NewsCoordinator.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import UIKit

final class NewsCoordinator: Coordinator, Coordinatable {
    
    func start() {}
    
    func start(with newsItem: NewsItem) {
        let assembly = NewsAssembly()
        let controller = assembly.configure(with: newsItem)
        router.push(controller, animated: true)
    }
}

extension NewsCoordinator {
    
    @objc func hideNews() {
        router.popModule(animated: true)
    }
}
