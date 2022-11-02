//
//  TouchGestureRecognizer.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 02.11.2022.
//

import UIKit

class TouchGestureRecognizer: UIGestureRecognizer, UIGestureRecognizerDelegate {
    
    override init(target: Any?, action: Selector?) {
        super.init(target: target, action: action)
        delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) { state = .began }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) { state = .changed }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) { state = .ended }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent) { state = .cancelled }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool { return !(otherGestureRecognizer is TouchGestureRecognizer) }
}
