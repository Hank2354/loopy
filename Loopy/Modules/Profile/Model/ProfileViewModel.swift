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
                 imageLink: URL(string: "https://images3.alphacoders.com/641/thumb-1920-641344.jpg")),
        NewsItem(title: "Рецепты семейного завтрака в разных странах",
                 text: "",
                 type: .food,
                 tags: [.new],
                 imageLink: URL(string: "https://i.pinimg.com/originals/f8/bf/57/f8bf5745f38068ce94058544c8aee189.jpg")),
        NewsItem(title: "Красивые места для занятий йогой",
                 text: "",
                 type: .sport,
                 tags: [],
                 imageLink: URL(string: "https://i.pinimg.com/originals/b5/10/1c/b5101ca3aced1afa053d71572a5bd8ce.jpg")),
        NewsItem(title: "Новая диета от первой ассоциации диетологов России",
                 text: "",
                 type: .food,
                 tags: [.custom(title: "Wow")],
                 imageLink: URL(string: "https://i.pinimg.com/originals/ef/03/88/ef03881c3ecbcc796d382ad7068d7be6.jpg")),
    ]
}
