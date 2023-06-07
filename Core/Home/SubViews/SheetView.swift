//
//  SheetView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 29.05.2023.
//

import SwiftUI

struct SheetView: View {
    
    //
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                Group{
                    Text("СВЯТКУЙ ДЕНЬ НАРОДЖЕННЯ РАЗОМ З НАМИ!")
                        .lineLimit(2)
                        .font(.title)
                        .minimumScaleFactor(0.2)
                        .fontWeight(.black)
                        .multilineTextAlignment(.center)
                    Text("Знижка імениннику 10% або 15%")
                        .foregroundColor(.cyan)
                    Text("Умови акції: ")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top,10)
                    Text(" ➥ Іменинникам даруємо 10% знижки в День народження та даруємо 15% знижки в День народження нашим постійним клієнтам\n\n ➥ Знижка діє протягом 7 днів до дня народження та 7 днів після дня народження\n\n ➥ Дана акція не сумується з іншими знижками та акціями компанії\n\n ➥ Дана знижка діє в святкові дні\n\n ➥ Постійний клієнт має: 10 і більше успішних замовлень та бути зареєстрованим на нашому сайті")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.cyan)
                        
                }
            }
            .shadow(radius: 0.3)
            .foregroundColor(Color("MainColor"))
            .padding()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
