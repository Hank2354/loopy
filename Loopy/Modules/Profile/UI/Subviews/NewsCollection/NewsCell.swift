//
//  NewsCell.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

final class NewsCell: UICollectionViewCell, ReusableCell {
    
    static var nibName = String(describing: NewsCell.self)
    
    func configureCell() {
        backgroundColor = .green
    }
    
}
