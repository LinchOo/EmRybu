//
//  SettingsView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    func singOut() throws {
        try AuthManager.shared.sinOut()
    }
}

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button{
                Task{
                    do{
                        try viewModel.singOut()
                        showSignInView = true
                    } catch {
                        print(error)
                    }
                }
            }label: {
                Text("Log Out")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showSignInView: .constant(false))
    }
}
