//
//  DailyPlateView+Highlight.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 26.10.2022.
//

import UIKit

extension DailyPlateView {
    
    func setupHighlight() {
        enableTouchFeedback(enable: true) { down, view in
            UIView.animate(withDuration: 0.6,
                           delay: 0.0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.0,
                           options: [.allowUserInteraction],
                           animations: {
                if down {
                    view.transform = CGAffineTransform.init(scaleX: 0.95, y: 0.95)
                    view.backgroundColor = self.iconView.backgroundColor
                    view.layer.borderColor = self.iconView.backgroundColor?.cgColor
                } else {
                    view.transform = CGAffineTransform.identity
                    view.backgroundColor = .clear
                    view.layer.borderColor = ColorConfig.lightYellow.cgColor
                }
            },
                           completion: nil)
        }
    }
}
