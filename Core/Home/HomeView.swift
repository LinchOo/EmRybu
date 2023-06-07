//
//  HomeView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 22.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var showingMoreInfoBottomSheet = false
    // variable of News viewModel here
    
    var body: some View {
            VStack{
                HStack{
                    Spacer()
                    Button {
                        showingMoreInfoBottomSheet.toggle()
                    }label: {
                        Image(systemName: "info.circle")
                            .resizable()
                            .frame(width: 40,height: 40)
                            .foregroundColor(Color("MainColor"))
                            .shadow(radius: 0.5)
                    }
                }
                .padding(.horizontal)
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
            .sheet(isPresented: $showingMoreInfoBottomSheet) {
                MoreInfoSheet()
                    .presentationDetents([.medium, .large])
            }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
