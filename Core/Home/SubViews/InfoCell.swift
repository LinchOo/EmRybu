//
//  InfoCell.swift
//  EmRybu
//
//  Created by Олег Коваленко on 22.05.2023.
//

import SwiftUI

struct InfoCell: View {
    var body: some View {
        VStack{
            Group{
                Text( "🕙 10:00 - 21:00 прийом замовлень" )
                Text( "🕦 11:30 - 23:00 доставка замовлень" )
                Text( "📞 063-444-11-88" )
                Text( "📞 050-444-11-88" )
                Text( "📞 063-678-02-64" )
            }
            .fontWeight(.bold)
            .foregroundColor(Color("MainColor"))
            .shadow(radius: 0.3)
            
            HStack(spacing: 35){
                Button{
                    
                }label: {
                    Image("facebook")
                        .resizable()
                        .frame(width: 40,height: 40)
                }
                
                Button{
                    
                }label: {
                    Image("telegram")
                        .resizable()
                        .frame(width: 40,height: 40)
                }
                Button{
                    
                }label: {
                    Image("viber")
                        .resizable()
                        .frame(width: 40,height: 40)
                }
                Button{
                    
                }label: {
                    Image("instagram")
                        .resizable()
                        .frame(width: 40,height: 40)
                }
            }
        }
    }
}

struct InfoCell_Previews: PreviewProvider {
    static var previews: some View {
        InfoCell()
    }
}
