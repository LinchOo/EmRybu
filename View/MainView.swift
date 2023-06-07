//
//  MainView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI

struct MainView: View {
<<<<<<< Updated upstream:View/MainView.swift
    @State var showSignInView = false
=======
    
    @State var isShowSignInView = false
    
    
    @State var authUser = AuthManager.shared.currentUser
>>>>>>> Stashed changes:MainTabBar/MainView.swift
    
    @State private var activeTab: TabBarModel = .home
    @Namespace private var animation
    @State private var tabShapePosition: CGPoint = .zero
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
<<<<<<< Updated upstream:View/MainView.swift
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
        
=======
        VStack(spacing: 0) {
            TabView(selection: $activeTab){
                HomeView()
                    .tag(TabBarModel.home)
                SettingsView(isShowSignInView: $isShowSignInView)
                    .tag(TabBarModel.settings)
            }
            CustomTabBar()
>>>>>>> Stashed changes:MainTabBar/MainView.swift
        }
        .onAppear{
            let authUser = try? AuthManager.shared.getUser()
            //self.showSignInView = authUser == nil
        }
<<<<<<< Updated upstream:View/MainView.swift
        .fullScreenCover(isPresented: $showSignInView) {
            AuthView(showSignInView: $showSignInView)
=======
//        .fullScreenCover(isPresented: $isShowSignInView) {
//            AuthView(showSignInView: $isShowSignInView)
//                .onDisappear{
//                    self.authUser = AuthManager.shared.currentUser
//                }
//        }
    }
    // Custom Tab Bar
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color("MainColor"), _ inActiveTint: Color = .cyan) -> some View {
        
        HStack(alignment: .bottom,spacing: 0) {
            ForEach(TabBarModel.allCases, id: \.rawValue) {
                TabItem(tint: tint,
                        inActiveTint: inActiveTint,
                        tab: $0,
                        animation: animation,
                        activeTab: $activeTab,
                        position: $tabShapePosition)
            }
>>>>>>> Stashed changes:MainTabBar/MainView.swift
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background{
            TabShape(midPoint: tabShapePosition.x)
                .fill(.white)
                .ignoresSafeArea()
                .shadow(color: tint.opacity(0.2), radius: 5, x: 0, y: -5)
                .blur(radius: 2)
                .padding(.top, 25)
        }
        .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
