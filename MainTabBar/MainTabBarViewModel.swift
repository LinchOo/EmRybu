//
//  MainTabBarViewModel.swift
//  EmRybu
//
//  Created by Олег Коваленко on 31.05.2023.
//

import Foundation
import FirebaseAuth

class MainTabBarViewModel: ObservableObject{
    var user: User
    
    init(user: User) {
        self.user = user
    }
    
}
