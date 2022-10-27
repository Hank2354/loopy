//
//  NewsCell.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

final class NewsCell: UICollectionViewCell, ReusableCell {
    
    // MARK: - Views
    @IBOutlet weak var tagStack: UIStackView!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    
    static var nibName = String(describing: NewsCell.self)
    
    func configureCell(with item: NewsItem) {
        tagStack.clear()
        newsTitle.text = item.title
        ImageLoader.loadImage(to: newsImageView,
                              url: item.imageLink,
                              options: [.backgroundColor(.darkGray),
                                        .useLoadingIndicator(.defaultStyle, .small),
                                        .showWithAnimating(0.4)])
        installTags(item.tags)
    }
    
    func installTags(_ tags: [NewsTag]) {
        let tagViews = tags.map { NewsTagView(tag: $0) }
        tagViews.forEach { tagStack.addArrangedSubview($0) }
    }
    
}
