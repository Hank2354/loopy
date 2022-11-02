//
//  NewsDelegate.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import UIKit

protocol NewsDelegate: AnyObject {
    
    func didSelectNews(_ news: NewsItem)
}
