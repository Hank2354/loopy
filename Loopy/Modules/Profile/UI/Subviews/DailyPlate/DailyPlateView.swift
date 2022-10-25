//
//  DailyPlateView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 23.10.2022.
//

import UIKit

@IBDesignable final class DailyPlateView: UIView {
    
    // MARK: - Properties
    private let radiusMultipler: CGFloat = 4.218
    private var isLoadedFromXib: Bool = false
    
    // MARK: - Subviews
    var view: UIView!
    
    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var valueTitle: UILabel!
    @IBOutlet weak var headerTitle: UILabel!
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        xibSetup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height / radiusMultipler
    }
}

extension DailyPlateView {
    func xibSetup() {
        guard !isLoadedFromXib else { return }
        view = loadViewFromNib()

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        isLoadedFromXib = true
    }

    func loadViewFromNib() -> UIView {
        let nib = UINib(nibName: "DailyPlate", bundle: .main)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
}
