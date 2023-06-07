//
//  OrderHistoryView.swift
//  EmRybu
//
//  Created by Олег Коваленко on 07.06.2023.
//

import SwiftUI

struct OrderHistoryView: View {
    var body: some View {
        List {
            HStack{
                Group{
                    VStack(alignment: .leading){
                        HStack{
                            Text("x1")
                            Text("Біг макі з лососем та сиром")
                        }
                        HStack{
                            Text("x2")
                            Text("Зелений Дракон унагі")
                        }
                        HStack{
                            Text("x1")
                            Text("Рол з тунцем")
                        }
                    }
                }
                Group{
                    Text("1024 грн")
                        .padding()
                }
            }
            
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}
