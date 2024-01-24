//
//  BackgroundView.swift
//  TradingCards
//
//  Created by Veda Niav Cunniffe on 2024-01-18.
//

import SwiftUI

struct CardView: View {
    
    //MARK: Stored properties
    let card: TradingCard
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
            VStack {
                card.backgroundImage
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
                Spacer()
                TitlesView(icon: fireMana, fillColor: Color.titleRed, title: "Unholy Heat", fontSize: 30)
                ZStack {
                    Rectangle()
                        .stroke(Color(card.borderColor), lineWidth: 10)
                        .frame(width: 320)
                }
                TitlesView(icon: fireMana, fillColor: Color.titleRed, title: "Instant", fontSize: 25)
                ZStack {
                    Rectangle()
                        .border(Color(card.borderColor), width: 5)
                        .frame(width: 300, height: 200)
                        .foregroundStyle(Color(card.fillColor))
                }
                Spacer()
            }
        }
    }
}

#Preview {
    CardView(
        card: unholyHeat
    )
}
