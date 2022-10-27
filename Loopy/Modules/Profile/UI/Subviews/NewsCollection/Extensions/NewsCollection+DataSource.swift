//
//  NewsCollection+DataSource.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

extension NewsCollection: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        news.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(indexPath: indexPath) as NewsCell
        cell.configureCell()
        return cell
    }
}
