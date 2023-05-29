//
//  NewsView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 22.05.2023.
//

import SwiftUI

struct NewsViewCell: View {
    @State var showingBottomSheet = false
    
    
    var body: some View {
            VStack{
                Image("news1")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                    .shadow(radius: 5)
                Button{
                    showingBottomSheet.toggle()
                }label: {
                    Text("СВЯТКУЙ ДЕНЬ НАРОДЖЕННЯ РАЗОМ З НАМИ!")
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .padding()
                        .font(.title)
                        .lineLimit(2)
                        .minimumScaleFactor(0.3)
                        .background{
                            Color("MainColor")
                                .cornerRadius(25)
                                .shadow(radius: 5)
                        }
                        
                    
                }
                .padding(.vertical, 20)
            }
            .frame(maxWidth: screen.width - 80)
            .sheet(isPresented: $showingBottomSheet) {
                SheetView()
                    .presentationDetents([.medium, .large])
            }
            
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsViewCell()
    }
}
