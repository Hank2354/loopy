//
//  DailyPlateView+PlateProtocol.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 26.10.2022.
//

import UIKit

extension DailyPlateView: PlateProtocol {
    func configure(with title: String?, subText: String?) {
        headerTitle.text = title
        subtitle.text = subText
    }
    
    func setPlateValue(_ value: String?) {
        valueTitle.text = value
    }
}
