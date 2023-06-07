//
//  MainView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI
import FirebaseAuth


struct MainView: View {
    @State var isShowSignInView = false
    @State var authUser = AuthManager.shared.currentUser
    
    var body: some View {
        VStack{
//            if let ggg = authUser?.email{
//                Text((authUser?.email)!)
//                AsyncImage(url: authUser?.photoURL)
//                    .frame(width: 150,height: 150)
//            }
            TabView{
                NavigationView{
                   HomeView()
                }
                .tabItem {
                    VStack{
                        Image(systemName: "house.lodge")
                        Text("Головна")
                    }
                }
                NavigationView{
                    
                }
                .tabItem {
                    VStack{
                        Image(systemName: "menucard")
                        Text("Страви")
                    }
                }
                NavigationView{
                    
                }
                .tabItem {
                    VStack{
                        Image(systemName: "basket")
                        Text("Кошик")
                    }
                }
                NavigationView{
                    SettingsView(isShowSignInView: $isShowSignInView)
                }
                .tabItem {
                    VStack{
                        Image(systemName: "person.2.badge.gearshape")
                        Text("Налаштування")
                    }
                }
            }
        }
        .onAppear{
            self.isShowSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $isShowSignInView) {
            AuthView(showSignInView: $isShowSignInView)
                .onDisappear{
                    self.authUser = AuthManager.shared.currentUser
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
