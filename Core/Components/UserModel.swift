//
//  UserModel.swift
//  EmRybu
//
//  Created by Олег Коваленко on 29.05.2023.
//

import Foundation
struct UserModel: Identifiable {
    
    // User Model Variables
    var id: String
    var name: String
    var phone: String
    var address: String
    
/*
    // User Model representation for work with db
    var representation: [String: Any] {
        var repres = [String: Any]()
        repres["id"] = self.id
        repres["name"] = self.name
        repres["phone"] = self.phone
        repres["address"] = self.address
        return repres
    }
 */
}
