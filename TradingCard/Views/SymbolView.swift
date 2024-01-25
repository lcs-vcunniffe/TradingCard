//
//  SymbolView.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-23.
//

import SwiftUI

struct SymbolView: View {
    //MARK: Stored properties
    let circleFill: Color
    var circleSize: CGFloat
    let icon: Image
    var iconWidth: CGFloat
    let maskShape: any Shape
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .frame(width: circleSize)
                .offset(x: -2, y: 5)
            Circle()
                .fill(Color(circleFill))
                .frame(width: circleSize)
            icon
                .resizable()
                .scaledToFit()
                .frame(width: iconWidth)
                .mask(Circle()) //Placeholder
            
        }
    }
}

#Preview {
    SymbolView(circleFill: Color.manaRed, circleSize: 80, icon: Image("fireMana"), iconWidth: 65, maskShape: Circle())
}
