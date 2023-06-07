//
//  TabBarModel.swift
//  EmRybu
//
//  Created by Олег Коваленко on 07.06.2023.
//

import SwiftUI

enum TabBarModel: String, CaseIterable {
case home = "Головна"
case menu = "Страви"
case basket = "Кошик"
case settings = "Налаштування"
    
    var systemImages: String {
        switch self {
        case .home:
            return "house.lodge"
        case .menu:
            return "menucard"
        case .basket:
            return "basket"
        case .settings:
            return "person.2.badge.gearshape"
        }
    }
    var index: Int {
        return TabBarModel.allCases.firstIndex(of: self) ?? 0
    }
}
