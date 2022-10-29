//
//  Color+hex.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 29.10.2022.
//

import SwiftUI

extension Color {
    
    init(hex: String) {
        self.init(UIColor(hex: hex) ?? .white)
    }
}
