//
//  User.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 21.10.2022.
//

import Foundation

struct User: Codable {
    let id: Int                     // User id
    let firstName: String           // Name
    let secondName: String          // Surname
    @Link var imageURL: URL?        // User profile photo link
    
    let dailyPlan: LifeParams?      // Daily plan params
    let dailyProgress: LifeParams?  // Current params for today
}

struct LifeParams: Codable {
    let kkal: Int                   // Amount of food consumed (in ccal)
    let steps: Int                  // Amount of steps (in pcs)
    let sleep: Int                  // Sleep time (in hours)
    let water: Double               // Amount of water drink (in liters)
}
