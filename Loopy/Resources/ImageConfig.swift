//
//  ImageConfig.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 17.10.2022.
//

import UIKit

public final class ImageConfig {
    
    // MARK: - Tab Bar
    static let homeTabBarImage               = UIImage(named: "TB_home_inactive")!
    static let homeTabBarImageSelected       = UIImage(named: "TB_home_active")!
    
    static let receiptsTabBarImage           = UIImage(named: "TB_receipts_inactive")!
    static let receiptsTabBarImageSelected   = UIImage(named: "TB_receipts_active")!
    
    static let fitnessTabBarImage            = UIImage(named: "TB_works_inactive")!
    static let fitnessTabBarImageSelected    = UIImage(named: "TB_works_active")!
    
    static let statisticsTabBarImage         = UIImage(named: "TB_statistics_inactive")!
    static let statisticsTabBarImageSelected = UIImage(named: "TB_statistics_active")!
}

public extension ImageConfig {
    
    // MARK: - DailyIcons
    struct DailyIcons {
        static let water = UIImage(named: "water")!
        static let sleep = UIImage(named: "sleep")!
        static let steps = UIImage(named: "steps")!
        static let food  = UIImage(named: "food")!
    }
    
    struct TagIcons {
        static let flame     = UIImage(named: "flame")!
        static let checkmark = UIImage(named: "checkmark")!
    }
}

public extension ImageConfig {
    
    // MARK: - SF Symbols
    struct SystemIcon {
        static let checkmark = UIImage(systemName: "checkmark")!
        static let flame     = UIImage(systemName: "flame")!
        static let bolt      = UIImage(systemName: "bolt")!
        static let seal      = UIImage(systemName: "seal")!
    }
}

public extension ImageConfig {
    // MARK: - Mock
    struct Mock {
        static let newsImage = UIImage(named: "newsImage")!
    }
}

public extension ImageConfig {
    // MARK: - Placeholders
    struct Placeholders {
        static let newsPlaceholder = UIImage(named: "newsPlaceholder")!
    }
}
