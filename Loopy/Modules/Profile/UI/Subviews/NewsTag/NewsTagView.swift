//
//  NewsTagView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 28.10.2022.
//

import UIKit

final class NewsTagView: UIView, XIBView {
    
    // MARK: - XIB
    var nibName: String = "NewsTag"
    var view: UIView!
    
    // MARK: - Views
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tagIconView: UIImageView!
    
    @IBOutlet weak var titleLeftConstraint: NSLayoutConstraint!
    
    
    // MARK: - Init
    init(tag: NewsTag) {
        super.init(frame: .zero)
        xibSetup()
        titleLabel.text = tag.title
        tagIconView.image = tag.icon
        tagIconView.backgroundColor = tag.accentColor
        
        tagIconView.isHidden = tagIconView.image == nil
        titleLeftConstraint.constant = tagIconView.image == nil ? -16 : 2
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        xibSetup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        clipsToBounds = true
        layer.cornerRadius = bounds.height / 2
    }
}

extension NewsTagView {
    func configure(with tagName: String, image: UIImage) {
        titleLabel.text = tagName
        tagIconView.image = image
    }
}
