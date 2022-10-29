//
//  Gradients.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 23.10.2022.
//

import UIKit

extension UIColor {
    
    static var orangeLightGradient: [CGColor] {
        let fromColor = UIColor(hex: "#F0774A")!.cgColor
        let toColor   = UIColor(hex: "#FFD571")!.cgColor
        
        return [fromColor, toColor]
    }
    
}
