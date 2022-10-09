//
//  BaseAssembly.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

protocol BaseAssembly {
    /// Create view controller for current module
    func configure() -> UIViewController
}
