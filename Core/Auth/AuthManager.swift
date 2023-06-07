//
//  AuthManager.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import Foundation
import FirebaseAuth
import GoogleSignIn

class AuthDataResultModel{
    var uid: String
    var email: String?
    var photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

final class AuthManager: ObservableObject {

    static let shared = AuthManager()
    private let auth = Auth.auth()
    
    var currentUser: User? {
        return auth.currentUser
    }
    
    
    @discardableResult
    func singInWithGoogle(tokens: GoogleSignInResultModel) async throws -> AuthDataResultModel {
        let credential = GoogleAuthProvider.credential(withIDToken: tokens.idToken , accessToken: tokens.accessToken)
        return try await signIn(credential: credential)
    }
    
    func signIn(credential: AuthCredential) async throws -> AuthDataResultModel {
        let authDataResult = try await Auth.auth().signIn(with: credential)
        let dataModel = AuthDataResultModel(user: authDataResult.user)
        
        if case DataBase.shared.checkUserExist(id: dataModel.uid) = false {
            try await UserManager.shared.createNewUser(auth: dataModel)
        }
        // if not exist add new
        
        //
        
        return dataModel
    }
    
    func sinOut() throws {
        try auth.signOut()
    }
    
    func getUser() throws -> AuthDataResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return AuthDataResultModel(user: user)
    }
}
