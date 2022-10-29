//
//  ProfileView.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

class ProfileView: ViewController, ProfileViewProtocol {
    
    // MARK: - Properties
    var model: ProfileModelInput!
    
    // MARK: - Views
    
    // Plate views
    @IBOutlet weak var foodPlateView: DailyPlateView!
    @IBOutlet weak var stepsPlateView: DailyPlateView!
    @IBOutlet weak var sleepPlateView: DailyPlateView!
    @IBOutlet weak var waterPlateView: DailyPlateView!
    
    // News collections
    @IBOutlet weak var sportNewsCollectionContainer: NewsContainerView!
    @IBOutlet weak var foodNewsCollectionContainer: NewsContainerView!
    
    // Other views
    @IBOutlet weak var dailyProgressViewContainer: UIView!
    
    
    // MARK: - Methods
    
    // ...
}
