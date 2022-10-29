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

extension NewsItem {
    
    static var mockItem: NewsItem {
        .init(title: "Новая программа тренировок от ведущего тренера РФ",
              text: "Таким образом, курс на социально-ориентированный национальный проект создаёт предпосылки качественно новых шагов для соответствующих условий активизации. Соображения высшего порядка, а также постоянный количественный рост и сфера нашей активности позволяет выполнить важнейшие задания по разработке системы обучения кадров, соответствующей насущным потребностям. Разнообразный и богатый опыт постоянное информационно-техническое обеспечение нашей деятельности обеспечивает широкому кругу специалистов участие в формировании направлений прогрессивного развития! Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности требует определения и уточнения направлений прогрессивного развития. Соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании новых предложений. Практический опыт показывает, что курс на социально-ориентированный национальный проект позволяет выполнить важнейшие задания по разработке экономической целесообразности принимаемых решений? Практический опыт показывает, что курс на социально-ориентированный национальный проект представляет собой интересный эксперимент проверки. Таким образом, курс на социально-ориентированный национальный проект создаёт предпосылки качественно новых шагов для соответствующих условий активизации. Соображения высшего порядка, а также постоянный количественный рост и сфера нашей активности позволяет выполнить важнейшие задания по разработке системы обучения кадров, соответствующей насущным потребностям. Разнообразный и богатый опыт постоянное информационно-техническое обеспечение нашей деятельности обеспечивает широкому кругу специалистов участие в формировании направлений прогрессивного развития! Разнообразный и богатый опыт постоянный количественный рост и сфера нашей активности требует определения и уточнения направлений прогрессивного развития. Соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании новых предложений. Практический опыт показывает, что курс на социально-ориентированный национальный проект позволяет выполнить важнейшие задания по разработке экономической целесообразности принимаемых решений? Практический опыт показывает, что курс на социально-ориентированный национальный проект представляет собой интересный эксперимент проверки",
              type: .sport,
              tags: [.hot, .new],
              imageLink: URL(string: "https://watersidephysio.co.uk/wp-content/uploads/2015/12/cycleist-768x512.jpg"))
    }
}
