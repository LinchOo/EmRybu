//
//  raz.swift
//  EmRybu
//
//  Created by Олег Коваленко on 20.05.2023.
//

import SwiftUI

struct raz: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button{
                AuthManager.shared.sinOut()
            }label: {
                Text("Log Out")
            }
        }
        
    }
}

struct raz_Previews: PreviewProvider {
    static var previews: some View {
        raz()
    }
}
