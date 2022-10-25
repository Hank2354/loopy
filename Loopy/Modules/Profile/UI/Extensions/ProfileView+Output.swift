//
//  ProfileView+Output.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

extension ProfileView: ProfileModelOutput {
    func configPlates() {
        foodPlateView.configure(with: .food)
        stepsPlateView.configure(with: .steps)
        sleepPlateView.configure(with: .sleep)
        waterPlateView.configure(with: .water)
        
        // Set mock values
        foodPlateView.setPlateValue(720)
        stepsPlateView.setPlateValue(10000)
        sleepPlateView.setPlateValue(7)
        waterPlateView.setPlateValue(1.0)
    }
}
