//
//  SettingsView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    
    
    @State var name = ""
    
    
    @Binding var isShowSignInView: Bool
    var body: some View {
        NavigationView{
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .ignoresSafeArea()
                    .shadow(radius: 3)
                TextField("Заповніть своє ім'я", text: $name)
                    .padding()
                TextField("Заповніть контактний номер телефону", text: $name)
                    .padding()
                HStack{
                    NavigationLink{
                        OrderHistoryView()
                    }label: {
                        Text("Історія Замовлень")
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
                Button{
                    Task{
                        do{
                            try viewModel.singOut()
                            isShowSignInView = true
                        } catch {
                            print(error)
                        }
                    }
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(height: 50)
                            .foregroundColor(Color("MainColor"))
                            .padding()
                            .shadow(radius: 5)
                        Text("Log Out")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(isShowSignInView: .constant(false))
    }
}
