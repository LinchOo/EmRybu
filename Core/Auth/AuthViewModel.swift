//
//  AuthViewModel.swift
//  EmRybu
//
//  Created by Олег Коваленко on 31.05.2023.
//

import SwiftUI

@MainActor
final class AuthViewModel: ObservableObject{
    func SignInWithGoogle() async throws {
        
        let helper = SignInGoolgeHelper()
        let tokens = try await helper.signIn()
        try await AuthManager.shared.singInWithGoogle(tokens: tokens)
        
        
    }
}
