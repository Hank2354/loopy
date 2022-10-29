//
//  NewsAssembly.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import SwiftUI

final class NewsAssembly: BaseAssembly {
    
    func configure() -> UIViewController { UIViewController() }
    
    func configure(with newsItem: NewsItem) -> UIViewController {
        let model = NewsModel(news: newsItem)
        let rootView = NewsView(newsModel: model)
        let controller = UIHostingController(rootView: rootView)
        controller.hidesBottomBarWhenPushed = true
        return controller
    }
}
