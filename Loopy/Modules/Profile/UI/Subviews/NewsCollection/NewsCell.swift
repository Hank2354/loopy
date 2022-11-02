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
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.tagStack.clear()
            self.newsTitle.text = item.title
            self.installTags(item.tags)
            ImageLoader.loadImage(to: self.newsImageView,
                                  url: item.imageLink,
                                  options: [.backgroundColor(.darkGray),
                                            .useLoadingIndicator(.defaultStyle, .small),
                                            .showWithAnimating(0.4)])
        }
        
        enableTouchFeedback(enable: true) { (down, view) in
            UIView.animate(withDuration: 0.6,
                           delay: 0.0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.0,
                           options: [.allowUserInteraction],
                           animations: { view.transform = down ? CGAffineTransform.init(scaleX: 0.95, y: 0.95) : CGAffineTransform.identity },
                           completion: nil)
        }
    }
    
    func installTags(_ tags: [NewsTag]) {
            let tagViews = tags.map { NewsTagView(tag: $0) }
            tagViews.forEach { tagStack.addArrangedSubview($0) }
    }
    
}
