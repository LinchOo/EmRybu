//
//  SignInGoogleHelper.swift
//  EmRybu
//
//  Created by Олег Коваленко on 22.05.2023.
//

import Foundation
import GoogleSignIn
import GoogleSignInSwift

struct GoogleSignInResultModel {
    let idToken: String
    let accessToken: String
}

final class SignInGoolgeHelper {
    
    @MainActor
    func signIn() async throws -> GoogleSignInResultModel{
        
        guard let topVC = Utilities.shared.topViewController() else { throw URLError(.cannotFindHost) }
        
        let gidSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: topVC)
        
        guard let idToken = gidSignInResult.user.idToken?.tokenString else {
            throw URLError(.badServerResponse)
        }
        let accessToken = gidSignInResult.user.accessToken.tokenString
        
        let tokens = GoogleSignInResultModel(idToken: idToken, accessToken: accessToken)
        return tokens
        
    }
}
