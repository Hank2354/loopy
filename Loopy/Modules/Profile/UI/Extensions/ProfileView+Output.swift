//
//  ProfileView+Output.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import SwiftUI

extension ProfileView: ProfileModelOutput {
    func generalConfig() {
        sportNewsCollectionContainer.setTitle("Новости спорта")
        foodNewsCollectionContainer.setTitle("Новости питания")
        
        sportNewsCollectionContainer.newsCollection.newsDelegate = model as! NewsDelegate
        foodNewsCollectionContainer.newsCollection.newsDelegate = model as! NewsDelegate
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
    
    /// We use SwiftUI for DailyProgressView and implement method for setup SUI view to current container
    /// For support interface building with SUI and UIKit together
    func installDailyProgressViewFromSUI(with model: DailyProgressModel) {
        let rootView = DailyProgressView(model: model)
        let childController = UIHostingController(rootView: rootView)
        childController.view.backgroundColor = .clear
        addChild(childController)
        childController.view.frame = dailyProgressViewContainer.bounds
        dailyProgressViewContainer.addSubview(childController.view)
        childController.didMove(toParent: self)
    }
}
