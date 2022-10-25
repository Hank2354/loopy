//
//  ProfileView+Output.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

extension ProfileView: ProfileModelOutput {
    func configPlates() {
        foodPlateView.configure(with: "Питание", subText: "ккал")
        stepsPlateView.configure(with: "Шаги", subText: "шагов")
        sleepPlateView.configure(with: "Сон", subText: "часов")
        waterPlateView.configure(with: "Вода", subText: "литров")
        
        // Set mock values
        foodPlateView.setPlateValue("720")
        stepsPlateView.setPlateValue("10 000")
        sleepPlateView.setPlateValue("7")
        waterPlateView.setPlateValue("1,0")
    }
}
