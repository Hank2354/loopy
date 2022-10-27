//
//  DailyPlateView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 23.10.2022.
//

import UIKit

@IBDesignable
final class DailyPlateView: UIView, XIBView {
    
    var nibName = "DailyPlate"
    
    // MARK: - Properties
    private let radiusMultipler: CGFloat = 4.218
    var type: Plate?
    
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
