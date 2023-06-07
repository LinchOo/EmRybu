//
//  TabItem.swift
//  EmRybu
//
//  Created by Олег Коваленко on 07.06.2023.
//

import SwiftUI

struct TabItem: View{
    var tint: Color
    var inActiveTint: Color
    var tab: TabBarModel
    var animation: Namespace.ID
    @Binding var activeTab: TabBarModel
    @State private var tabPosition: CGPoint = .zero
    @Binding var position: CGPoint
    
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: tab.systemImages)
                .font(.title2)
                .foregroundColor(activeTab == tab ? .white : inActiveTint )
                .frame(width: activeTab == tab ? 58 : 35, height: activeTab == tab ? 58 : 35)
                .background{
                    if activeTab == tab {
                        Circle()
                            .fill(tint.gradient)
                            .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                    }
                }
            
            Text(tab.rawValue)
                .font(.caption)
                .foregroundColor(activeTab ==  tab ? tint : .gray)
                .shadow(radius: 0.5)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .viewPosition(completion: { rect in
            tabPosition.x = rect.midX
            if activeTab == tab {
                position.x = rect.midX
            }
        })
        .onTapGesture {
            activeTab = tab
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)){
                position.x = tabPosition.x
            }
            
        }
        
    }
    
}
