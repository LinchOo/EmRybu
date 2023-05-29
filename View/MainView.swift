//
//  MainView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI

struct MainView: View {
    @State var showSignInView = false
    
    var body: some View {
        ZStack{
            
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
            let authUser = try? AuthManager.shared.getUser()
            //self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView) {
            AuthView(showSignInView: $showSignInView)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
