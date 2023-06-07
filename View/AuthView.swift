//
//  AuthView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI
//import FirebaseAuth
//import GoogleSignIn
//import GoogleSignInSwift

@MainActor
final class AuthViewModel: ObservableObject{
    func SignInWithGoogle() async throws {
        
        let helper = SignInGoolgeHelper()
        let tokens = try await helper.signIn()
        try await AuthManager.shared.singInWithGoogle(tokens: tokens)
        
    }
}

struct AuthView: View {
    @Binding var showSignInView: Bool
    @StateObject private var viewModel = AuthViewModel()
    
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button{
                Task{
                    do{
                        try await viewModel.SignInWithGoogle()
                        showSignInView = false
                    } catch {
                        print(error)
                    }
                }
            }label: {
                HStack{
                    Image(systemName: "sunset.circle")
                        .resizable()
                        .frame(width: 35,height: 35)
                        .padding(.horizontal)
                        
                    Text("Sign in with Google")
                        .padding()
                }
            }
            
            .background {
                Color(.gray)
                    .opacity(0.15)
            }
            .cornerRadius(15)
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
