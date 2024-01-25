//
//  SymbolView.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-23.
//

import SwiftUI

struct SymbolView: View {
    //MARK: Stored properties
    let symbol: Symbol
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .frame(width: symbol.circleSize)
                .offset(x: -2, y: 5)
            Circle()
                .fill(Color(symbol.circleFill))
                .frame(width: symbol.circleSize)
            symbol.icon
                .resizable()
                .scaledToFit()
                .frame(width: symbol.iconWidth)
                .mask(
                    Circle()
                )
            
        }
    }
}

#Preview {
    SymbolView(symbol: fireMana)
}
