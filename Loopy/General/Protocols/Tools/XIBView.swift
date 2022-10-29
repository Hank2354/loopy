//
//  XIBView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 28.10.2022.
//

import UIKit

protocol XIBView: UIView {
    var nibName: String { get }
    
    var view: UIView! { get set }
    
    func xibSetup()
    
    func loadViewFromNib() -> UIView
}

extension XIBView {
    func xibSetup() {
        view = loadViewFromNib()

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }

    func loadViewFromNib() -> UIView {
        let nib = UINib(nibName: nibName, bundle: .main)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
}
