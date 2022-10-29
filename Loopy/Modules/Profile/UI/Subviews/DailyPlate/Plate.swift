//
//  Plate.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 26.10.2022.
//

enum Plate {
    case food
    case steps
    case sleep
    case water
    
    var header: String {
        switch self {
        case .food:  return "Питание"
        case .steps: return "Шаги"
        case .sleep: return "Сон"
        case .water: return "Вода"
        }
    }
    
    var suffix: String {
        switch self {
        case .food:  return "ккал"
        case .steps: return "шагов"
        case .sleep: return "часов"
        case .water: return "литров"
        }
    }
    
    var maximumFractionDigits: Int {
        switch self {
        case .water: return 1
        default:     return 0
        }
    }
}
