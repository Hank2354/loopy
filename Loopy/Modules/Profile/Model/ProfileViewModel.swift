//
//  ProfileViewModel.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

final class ProfileViewModel {
    
    weak var output: ProfileModelOutput?
    
    var navigationFlow: ((ProfileCoordinator.NavigationFlow) -> Void)?
    
    var dailyProgressModel = DailyProgressModel()
    
    let mockData = [
        .mockItem,
        NewsItem(title: "Рецепты семейного завтрака в разных странах",
                 text: "",
                 type: .food,
                 tags: [.new, .hot],
                 imageLink: URL(string: "https://new-retail.ru/upload/iblock/9fe/9fe270819553e6c48fedf6f0290fbda4.jpg")),
        NewsItem(title: "Красивые места для занятий йогой",
                 text: "",
                 type: .sport,
                 tags: [.hot],
                 imageLink: URL(string: "https://dnipro.tv/wp-content/uploads/2021/06/yoga-730x411.jpg")),
        NewsItem(title: "Новая диета от первой ассоциации диетологов России",
                 text: "",
                 type: .food,
                 tags: [.custom(title: "Wow")],
                 imageLink: URL(string: "https://spravka-region.ru/images/category/Produkty-pitania.jpg")),
    ]
}
