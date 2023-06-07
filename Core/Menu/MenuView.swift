//
//  MenuView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 22.05.2023.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        HStack{
            Button{
                
            }label: {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .padding(.horizontal)
            }
            Spacer()
            VStack{
                Text("Ваша Адресса")
                    .font(.subheadline)
                Button{
                    //
                }label: {
                    Text("➘ Івасюкa 44")
                        .font(.title)
                        .minimumScaleFactor(0.3)
                }
            }
            Spacer()
            
            Button{
                //
            }label: {
                Image(systemName: "xmark.bin.circle")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .padding(.horizontal)
            }
        }
        .frame(width: .infinity,height: 70)
        Spacer()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
