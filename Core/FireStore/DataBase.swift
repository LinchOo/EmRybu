//
//  DataBase.swift
//  EmRybu
//
//  Created by Олег Коваленко on 31.05.2023.
//

import Foundation
import FirebaseFirestore

struct DataBase {
    static let shared = DataBase()
    
    let db = Firestore.firestore()
    
    func checkUserExist(id: String) -> Bool {
        var result = false
        let docRef = db.collection("users").document("TB6XheYxdQPgtup5p6Ce5YmCYbC2")
        docRef.getDocument { (document, error) in
            if document!.exists {
                result = true
            }
            else{
                result = false
            }
        }
        return result
    }
}
