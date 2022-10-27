//
//  NewsItem.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

struct NewsItem {
    let title: String         // Header of news
    let text: String          // Full text of news
    let type: NewsType        // Type of news
    let tags: [NewsTag]       // Tags of news
    let imageLink: URL?       // Head picture of news
}

enum NewsTag: Hashable, RawRepresentable {
    typealias RawValue = String
    
    // CASES
    case new
    case hot
    case special
    case custom(title: String)
    
    // PROPERTIES
    var title: String {
        switch self {
        case .custom(let title): return title.capitalized
        default:                 return rawValue.capitalized
        }
    }
    
    var accentColor: UIColor {
        switch self {
        case .new:     return ColorConfig.darkGreen
        case .hot:     return ColorConfig.lightOrange
        case .special: return ColorConfig.lavender
        case .custom:  return ColorConfig.accentOrange
        }
    }
    
    var icon: UIImage {
        switch self {
        case .new:     return ImageConfig.TagIcons.checkmark
        case .hot:     return ImageConfig.TagIcons.flame
        case .special: return ImageConfig.SystemIcon.bolt
        case .custom:  return ImageConfig.SystemIcon.seal
        }
    }
    
    // CONFIG
    init?(rawValue: String) {
        switch rawValue {
        case "new":     self = .new
        case "hot":     self = .hot
        case "special": self = .special
        default:        self = .custom(title: rawValue)
        }
    }
    
    var rawValue: RawValue {
        switch self {
        case .new:               return "new"
        case .hot:               return "hot"
        case .special:           return "special"
        case .custom(let title): return title
        }
    }
}

enum NewsType: String {
    case sport                // News about sport
    case food                 // News about food or receipts/diets
}
