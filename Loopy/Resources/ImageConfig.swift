//
//  ImageConfig.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 17.10.2022.
//

import UIKit

public final class ImageConfig {
    
    // MARK: - Tab Bar
    static let homeTabBarImage               = UIImage(named: "TB_home_inactive")!.withRenderingMode(.alwaysOriginal)
    static let homeTabBarImageSelected       = UIImage(named: "TB_home_active")!.withRenderingMode(.alwaysOriginal)
    
    static let receiptsTabBarImage           = UIImage(named: "TB_receipts_inactive")!.withRenderingMode(.alwaysOriginal)
    static let receiptsTabBarImageSelected   = UIImage(named: "TB_receipts_active")!.withRenderingMode(.alwaysOriginal)
    
    static let fitnessTabBarImage            = UIImage(named: "TB_works_inactive")!.withRenderingMode(.alwaysOriginal)
    static let fitnessTabBarImageSelected    = UIImage(named: "TB_works_active")!.withRenderingMode(.alwaysOriginal)
    
    static let statisticsTabBarImage         = UIImage(named: "TB_statistics_inactive")!.withRenderingMode(.alwaysOriginal)
    static let statisticsTabBarImageSelected = UIImage(named: "TB_statistics_active")!.withRenderingMode(.alwaysOriginal)
}
