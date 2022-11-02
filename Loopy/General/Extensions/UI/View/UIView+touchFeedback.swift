//
//  UIView+touchFeedback.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 02.11.2022.
//

import Foundation
import UIKit

extension UIView {
    
    /// Enable reacton for tap on view
    func enableTouchFeedback(enable: Bool, touchHandler: ((Bool, UIView) -> Void)?) {
        // If enable = false, remove current gesture
        if !enable {
            savedTouchHandlers.removeObject(forKey: self)
            gestureRecognizers?.removeAll(where: { $0 is TouchGestureRecognizer })
            return
        }
        // Save tap on view handler and add tap gesture on current view
        savedTouchHandlers.setObject(touchHandler as AnyObject, forKey: self)
        if gestureRecognizers?.first(where: { $0 is TouchGestureRecognizer }) == nil {
            let touch = TouchGestureRecognizer(target: self, action: #selector(onTouch(gesture:)))
            touch.cancelsTouchesInView = false
            addGestureRecognizer(touch)
        }
    }
    
    /// Touch on view selector
    @objc func onTouch(gesture: UIGestureRecognizer) {
        let down = gesture.state == .began || gesture.state == .changed
        
        if let handler = savedTouchHandlers.object(forKey: self) as? ((Bool, UIView) -> Void) { handler(down, self) }

        else {
            
            let transform = down ? CGAffineTransform(scaleX: 0.97, y: 0.97) : .identity
            if down {
                UIView.animate(withDuration: 0.8,
                               delay: 0.0,
                               usingSpringWithDamping: 0.4,
                               initialSpringVelocity: 0.0,
                               options: [.allowUserInteraction], animations: { self.transform = transform },
                               completion: nil)
            } else {
                UIView.animate(withDuration: 0.25,
                               delay: 0.0,
                               options: [.allowUserInteraction, .curveEaseOut], animations: { self.transform = transform })
            }
        }
    }
}

private var savedTouchHandlers = NSMapTable<UIView, AnyObject>(keyOptions: .weakMemory, valueOptions: .strongMemory)
