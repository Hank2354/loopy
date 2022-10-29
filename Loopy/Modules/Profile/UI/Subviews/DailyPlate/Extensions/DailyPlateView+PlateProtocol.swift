//
//  DailyPlateView+PlateProtocol.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 26.10.2022.
//

import UIKit

extension DailyPlateView: PlateProtocol {
    func configure(with type: Plate) {
        headerTitle.text = type.header
        subtitle.text = type.suffix
        self.type = type
    }
    
    func setPlateValue(_ value: Float?) {
        valueTitle.text = String(Int(value ?? 0))
        
        if let type, let value {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.groupingSeparator = " "
            formatter.maximumFractionDigits = type.maximumFractionDigits
            valueTitle.text = formatter.string(from: value as NSNumber)
        }
    }
}
