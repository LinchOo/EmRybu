//
//  UserManager.swift
//  EmRybu
//
//  Created by Олег Коваленко on 31.05.2023.
//

import Foundation
import FirebaseFirestore

final class UserManager {
    
    static let shared = UserManager()
    private init() { }
    
    func createNewUser(auth: AuthDataResultModel) async throws {
        var userData:[String:Any] = [
            "user_id" : auth.uid,
            "date_created" : Timestamp(),
        ]
        if let email = auth.email {
            userData["email"] = email
        }
        if let photoUrl = auth.photoUrl {
            userData["avatar_url"] = photoUrl
        }
        try await Firestore.firestore().collection("users").document(auth.uid).setData(userData, merge: false)
        
        
    }
}

//let docRef = db.collection("collection").document("doc")
//docRef.getDocument { (document, error) in
//       if document.exists {
//         print("Document data: \(document.data())")
//      } else {
//         print("Document does not exist")
//      }
//}
