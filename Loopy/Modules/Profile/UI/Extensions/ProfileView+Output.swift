//
//  ProfileView+Output.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

extension ProfileView: ProfileModelOutput {
    func generalConfig() {
        sportNewsCollectionContainer.setTitle("Новости спорта")
        foodNewsCollectionContainer.setTitle("Новости питания")
    }
    
    func configPlates() {
        foodPlateView.configure(with: .food)
        stepsPlateView.configure(with: .steps)
        sleepPlateView.configure(with: .sleep)
        waterPlateView.configure(with: .water)
        
        #warning("Use mock values for plater only for testing plate system")
        foodPlateView.setPlateValue(720)
        stepsPlateView.setPlateValue(10000)
        sleepPlateView.setPlateValue(7)
        waterPlateView.setPlateValue(1.0)
    }
    
    func showNews(_ news: [NewsItem]) {
        let sportNews = news.filter { $0.type == .sport }
        let foodNews  = news.filter { $0.type == .food }
        
        sportNewsCollectionContainer.acceptNews(sportNews)
        foodNewsCollectionContainer.acceptNews(foodNews)
    }
}
