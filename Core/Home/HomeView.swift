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
        //ZStack {
            VStack{
                TabView {
                    // FOR Each New's
                    NewsViewCell()
                    Text("123")
                }
                //.tabViewStyle(.page)
                .tabViewStyle(.page(indexDisplayMode: .never))
                Spacer()
                VStack{
                    InfoCell()
                }
                Spacer()
            }
        }
   // }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
