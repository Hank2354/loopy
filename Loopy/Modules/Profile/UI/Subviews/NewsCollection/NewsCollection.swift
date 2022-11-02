//
//  NewsCollection.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

final class NewsCollection: UICollectionView {
    
    // MARK: - Properties
    var news = [NewsItem]()
    weak var newsDelegate: NewsDelegate?
    
    // MARK: - Init
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let flowLayout = NewsCollection.newFlowLayout
        super.init(frame: frame, collectionViewLayout: flowLayout)
        
        generalInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        generalInit()
    }
    
    func generalInit() {
        setupView()
    }
}

// MARK: - For use
extension NewsCollection {
    func setNews(_ news: [NewsItem]) {
        self.news = news
        
        DispatchQueue.main.async { [weak self] in
            self?.reloadData()
        }
    }
}

// MARK: - Config
extension NewsCollection {
    
    static var newFlowLayout: UICollectionViewFlowLayout {
        let layout = PagingCollectionViewLayout()
        layout.itemSize = .init(width: mainScreen.bounds.width - 48,
                                    height: 170)
        layout.minimumLineSpacing = 18
        layout.sectionInset = .init(top: 0,
                                    left: (mainScreen.bounds.width - layout.itemSize.width) / 3,
                                    bottom: 0,
                                    right: (mainScreen.bounds.width - layout.itemSize.width) / 3)
        layout.scrollDirection = .horizontal
        return layout
    }
    
    func setupView() {
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        backgroundColor = .clear
        decelerationRate = .fast
        
        cellRegistration()
        setupDelegate()
    }
    
    
    func cellRegistration() {
        register(UINib(nibName: NewsCell.nibName, bundle: nil),
                 forCellWithReuseIdentifier: NewsCell.reuseIdentifier)
    }
    
    func setupDelegate() {
        delegate = self
        dataSource = self
    }
}
