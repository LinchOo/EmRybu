//
//  MoreInfoSheet.swift
//  EmRybu
//
//  Created by Олег Коваленко on 07.06.2023.
//

import SwiftUI

struct MoreInfoSheet: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 20){
                VStack(spacing: 10){
                    Text("Вас вітає Краща доставка суші в Києві - «ЇМ РИБУ І ХУДНУ»!")
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("MainColor"))
                        .shadow(radius: 0.35)
                    VStack(alignment: .leading, spacing: 10){
                        Text(" ➥ Всім прихильникам здорового харчування компанія «ЇМ РИБУ І ХУДНУ» пропонує зробити такий спосіб життя ще більш доступним.\n ➥ Здійснюємо доставку широкого меню здорової їжі. Ми пропонуємо доставку суші, круасанів, рисової піци, десертів, салатів та напоїв.\n ➥ Купити суші в Києві тепер зовсім просто - достатньо оформити доставку у нас, дотримуйтеся здорового способу життя навіть в робочий день.\n ➥ Ми працюємо по всьому Києву та найближчому передмістю ( Козин, Коцюбинське, Чайки, Петропавлівська Борщагівка, Софіївська Борщагівка, Святопетрівське, Вишневе, Гатне, Крюківщина, Чабани, Хотів та Лісники ).")
                        
                    }
                    .foregroundColor(.cyan)
                }
                VStack(spacing: 10){
                    Text("Наші переваги:")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("MainColor"))
                        .shadow(radius: 0.35)
                    
                    VStack(alignment: .leading, spacing: 10){
                        Text(" ➥ Використовуємо тільки свіжі екологічні продукти. Наші фахівці ретельно обирають постачальників, керуючись лише принципами якості, обов'язково перевіряючи умови зберігання та сертифікати якості.")
                        Text(" ➥ Ми не використовуємо при приготуванні суші напівфабрикатів. Коли хочете замовити суші - будьте впевнені, що все свіжо приготоване спеціально для Вас, саме тому час доставки складає максимально протягом 2 години 20 хвилин.")
                        Text(" ➥ Доставка точно і в строк.")
                        Text(" ➥ Наявність постійних акцій і знижок, святкові пропозиції.")
                    }
                    .foregroundColor(.cyan)
                }
            }
            .padding()
        }
    }
}

struct MoreInfoSheet_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoSheet()
    }
}
