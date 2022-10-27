//
//  ProfileView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

class ProfileView: ViewController, ProfileViewProtocol {
    
    var model: ProfileModelInput!
    
    // MARK: - Plate views
    @IBOutlet weak var foodPlateView: DailyPlateView!
    @IBOutlet weak var stepsPlateView: DailyPlateView!
    @IBOutlet weak var sleepPlateView: DailyPlateView!
    @IBOutlet weak var waterPlateView: DailyPlateView!
    
    @IBOutlet weak var sportNewsCollectionContainer: NewsContainerView!
    @IBOutlet weak var foodNewsCollectionContainer: NewsContainerView!
    
}
