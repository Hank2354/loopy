//
//  ProfileViewModel.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 09.10.2022.
//

import UIKit

final class ProfileViewModel {
    
    weak var output: ProfileModelOutput?
    
    let mockData = [
        NewsItem(title: "Новая программа тренировок от ведущего тренера РФ",
                 text: "",
                 type: .sport,
                 tags: [.hot, .new],
                 imageLink: URL(string: "https://watersidephysio.co.uk/wp-content/uploads/2015/12/cycleist-768x512.jpg")),
        NewsItem(title: "Рецепты семейного завтрака в разных странах",
                 text: "",
                 type: .food,
                 tags: [.new],
                 imageLink: URL(string: "https://new-retail.ru/upload/iblock/9fe/9fe270819553e6c48fedf6f0290fbda4.jpg")),
        NewsItem(title: "Красивые места для занятий йогой",
                 text: "",
                 type: .sport,
                 tags: [],
                 imageLink: URL(string: "https://dnipro.tv/wp-content/uploads/2021/06/yoga-730x411.jpg")),
        NewsItem(title: "Новая диета от первой ассоциации диетологов России",
                 text: "",
                 type: .food,
                 tags: [.custom(title: "Wow")],
                 imageLink: URL(string: "https://spravka-region.ru/images/category/Produkty-pitania.jpg")),
    ]
}
