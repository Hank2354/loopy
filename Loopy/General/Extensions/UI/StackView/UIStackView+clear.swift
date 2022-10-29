//
//  UIStackView+clear.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 28.10.2022.
//

import UIKit

extension UIStackView {
    
    /// Removing all arranged subviews from this UIStackView
    func clear() {
        arrangedSubviews.forEach { removeArrangedSubview($0); $0.removeFromSuperview() }
    }
}
