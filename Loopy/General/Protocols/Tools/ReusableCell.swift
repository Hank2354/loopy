//
//  ReusableCell.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

/// Protocol for indicate UICollectionViewCell or UITableViewCell
protocol ReusableCell: AnyObject {
    static var reuseIdentifier: String { get }
}

extension ReusableCell {
    static var reuseIdentifier: String {
        String(describing: self)
    }
}

extension UITableView {
    func dequeueReusableCell<T: ReusableCell>(indexPath: IndexPath) -> T {
        self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
    
    func registerReusableCell<T: UITableViewCell>(_: T.Type) where T: ReusableCell {
        self.register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
    }
}

extension UICollectionView {
    func dequeueReusableCell<T: ReusableCell>(indexPath: IndexPath) -> T {
        self.dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as! T
    }
    
    func registerReusableCell<T: UICollectionViewCell>(_: T.Type) where T: ReusableCell {
        self.register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
}
