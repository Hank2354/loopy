//
//  DailyPlateView+Highlight.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 26.10.2022.
//

import UIKit

extension DailyPlateView {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveLinear) {
            self.backgroundColor = self.iconView.backgroundColor
            self.layer.borderColor = self.iconView.backgroundColor?.cgColor
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear) {
            self.backgroundColor = .clear
            self.layer.borderColor = ColorConfig.lightYellow.cgColor
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear) {
            self.backgroundColor = .clear
            self.layer.borderColor = ColorConfig.lightYellow.cgColor
        }
    }
}
