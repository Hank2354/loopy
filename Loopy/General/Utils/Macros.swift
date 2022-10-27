//
//  Macros.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 27.10.2022.
//

import UIKit

private var appWindow: UIWindow? {
    UIApplication.shared.windows.filter({ $0.isKeyWindow }).first ?? UIApplication.shared.windows.first
}

public var mainScreen: UIScreen {
    appWindow?.screen ?? UIScreen.main
}
