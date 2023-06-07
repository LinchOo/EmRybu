//
//  SettingsViewModel.swift
//  EmRybu
//
//  Created by Олег Коваленко on 31.05.2023.
//

import Foundation

@MainActor
final class SettingsViewModel: ObservableObject {
    var name: String = "1faramir1"
    var phone: String = "+38099999999"
    
    //var location:
    
    
    func singOut() throws {
        try AuthManager.shared.sinOut()
    }
//    func getUser() throws {
//        try AuthManager.shared.getUser()
//    }
}
