//
//  HomeView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 22.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    // variable of News viewModel here
    
    var body: some View {
        ZStack {
            VStack{
                TabView {
                    // FOR Each New's
                    NewsViewCell()
                    Text("123")
                }
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                .scrollIndicators(.hidden)
                .tabViewStyle(.page)
                Spacer()
                VStack{
                    InfoCell()
                }
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
