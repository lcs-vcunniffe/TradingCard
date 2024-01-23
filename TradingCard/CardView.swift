//
//  BackgroundView.swift
//  TradingCards
//
//  Created by Veda Niav Cunniffe on 2024-01-18.
//

import SwiftUI

struct CardView: View {
    
    //MARK: Stored properties
    let backgroundColor: Color
    let backgroundImage: Image
    let fillColor: Color
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
            VStack {
                Image("fireBackground")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                .frame(width: 360, height: 650)
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 70)
            }
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(Color.black, lineWidth: 20)
            VStack {
               //note to self: this is where the titles/images go
                ZStack {
                    Rectangle()
                        .border(Color.red, width: 5)
                        .frame(width: 300, height: 200)
                        .foregroundStyle(Color(fillColor))
                }
            }
        }
    }
}

#Preview {
    CardView(backgroundColor: Color.red, backgroundImage: Image("fireBackground"), fillColor: Color.textRed)
}
