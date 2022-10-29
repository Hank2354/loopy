//
//  DailyPlate+IBDesignable.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 23.10.2022.
//

import UIKit

extension DailyPlateView {
    
    @IBInspectable var borderWidth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get { layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!) : nil }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    @IBInspectable var iconColor: UIColor? {
        get { iconView.backgroundColor }
        set { iconView.backgroundColor = newValue }
    }
    
    @IBInspectable var iconImage: UIImage? {
        get { iconView.image }
        set { iconView.image = newValue }
    }
}
