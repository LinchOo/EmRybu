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
    
    @State private var activeTab: TabBarModel = .home
    @State private var tabShapePosition: CGPoint = .zero
    @Namespace private var animation
    
    init(){
        UITabBar.appearance().isHidden  = true
    }
    var body: some View {
        VStack(spacing: 0){
            TabView(selection: $activeTab) {
                HomeView()
                    .tag(TabBarModel.home)
                MenuView()
                    .tag(TabBarModel.menu)
                BasketView()
                    .tag(TabBarModel.basket)
                SettingsView(isShowSignInView: $isShowSignInView)
                    .tag(TabBarModel.settings)
            }
            
            CustomTabBar()
        }
        .onAppear{
            self.isShowSignInView = authUser == nil
        }
//        .fullScreenCover(isPresented: $isShowSignInView) {
//            AuthView(showSignInView: $isShowSignInView)
//                .onDisappear{
//                    self.authUser = AuthManager.shared.currentUser
//                }
//        }
    }
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color("MainColor"), _ inActiveTint: Color = .cyan) -> some View {
        HStack(alignment: .bottom, spacing: 0) {
            ForEach(TabBarModel.allCases, id: \.rawValue) {
                TabItem(tint: tint,
                        inActiveTint: inActiveTint,
                        tab: $0,
                        animation: animation,
                        activeTab: $activeTab,
                        position: $tabShapePosition)
            }
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
