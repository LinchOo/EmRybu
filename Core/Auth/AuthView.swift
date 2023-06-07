//
//  AuthView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI

struct AuthView: View {
    @Binding var showSignInView: Bool
    @StateObject private var viewModel = AuthViewModel()
    
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
            Spacer()
            HStack{
                Text("Суші!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.white))
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("MainColor"))
                    }
                Spacer()
            }
            .padding(.horizontal,20)
            HStack{
                Spacer()
                Text("Роли!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.white))
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("MainColor"))
                    }
                
            }
            .padding(.horizontal,20)
            Spacer()
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
                    Image(systemName: "arrow.turn.down.right")
                        .imageScale(.large)
                    Text("Увійти за допомогою Google")
                        .font(.title3)
                        .shadow(radius: 0.3)
                        .fontWeight(.bold)
                        .padding()
                }
                .foregroundColor(Color("MainColor"))
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView(showSignInView: .constant(false))
    }
}
