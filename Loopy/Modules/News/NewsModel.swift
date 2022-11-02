//
//  NewsModel.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import SwiftUI

final class NewsModel: ObservableObject {
    var newsItem: NewsItem
    
    var dismissFlow: ((Bool) -> Void)?
    
    init(news: NewsItem) {
        self.newsItem = news
    }
}
