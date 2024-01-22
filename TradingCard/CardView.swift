//
//  BackgroundView.swift
//  TradingCards
//
//  Created by Veda Niav Cunniffe on 2024-01-18.
//

import SwiftUI

struct BackgroundView: View {
    
    //MARK: Stored properties
    let backgroundColor: Color
    
    //MARK: Computed properties
    var body: some View {
        ZStack (alignment: .top) {
            Color.black
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color(backgroundColor))
                .frame(height: 600)
            VStack {
                
            }
        }
    }
}

#Preview {
    BackgroundView(backgroundColor: Color.red)
}
