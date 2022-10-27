//
//  NewsContainerView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

@IBDesignable
final class NewsContainerView: UIView {
    
    @UsesAutoLayout
    var titleLabel = UILabel() * {
        $0.font = .systemFont(ofSize: 21, weight: .bold)
        $0.textColor = .white
        $0.text = "Новости спорта"
    }
    
    @UsesAutoLayout
    var newsCollection = NewsCollection(frame: .zero, collectionViewLayout: .init())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        generalInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        generalInit()
    }
    
    private func generalInit() {
        configure()
    }
}

extension NewsContainerView {
    
    func configure() {
        setupSubviews()
    }
    
    func setupSubviews() {
        addSubview(titleLabel)
        addSubview(newsCollection)
        setupConstraints()
    }
    
    func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(contentsOf: [
            // Constraints for title
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            
            // Constraints for collection
            newsCollection.leadingAnchor.constraint(equalTo: leadingAnchor),
            newsCollection.trailingAnchor.constraint(equalTo: trailingAnchor),
            newsCollection.bottomAnchor.constraint(equalTo: bottomAnchor),
            newsCollection.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate(constraints)
    }
}
