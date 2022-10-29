//
//  UIColor+cgColor.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 23.10.2022.
//

import UIKit

extension CGColor {
    static var uiColor: UIColor {
        UIColor(cgColor: self as! CGColor)
    }
}
