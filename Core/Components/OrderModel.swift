//
//  OrderModel.swift
//  EmRybu
//
//  Created by Олег Коваленко on 29.05.2023.
//

import Foundation
import FirebaseFirestore

struct OrderModel{
    
    //Order Model variables
    var id: String = UUID().uuidString
    var userId: String
    // var positions = [Position]()
    var date: Date
    var status: String
    
}
