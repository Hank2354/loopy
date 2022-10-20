//
//  User.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 21.10.2022.
//

import Foundation

struct User: Codable {
    let id: Int                     // Идентификатор пользователя
    let firstName: String           // Имя
    let secondName: String          // Фамилия
    @Link var imageURL: URL?        // Ссылка на изображение профиля
    
    let dailyPlan: LifeParams?      // Плановые дневные показатели
    let dailyProgress: LifeParams?  // Текущие показатели на сегодняшную дату
}

struct LifeParams: Codable {
    let kkal: Int                   // Количество употребленной пищи (В ккал)
    let steps: Int                  // Количество шагов (В штуках)
    let sleep: Int                  // Количество сна (В часах)
    let water: Double               // Количество выпитой воды (В литрах)
}
