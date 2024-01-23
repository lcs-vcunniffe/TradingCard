//
//  BackgroundView.swift
//  TradingCards
//
//  Created by Veda Niav Cunniffe on 2024-01-18.
//

import SwiftUI

struct CardView: View {
    
    //MARK: Stored properties
    let borderColor: Color
    let backgroundImage: Image
    let fillColor: Color
    let creatureImage: Image
    let description1: String
    let description2: String
    let story: String
    
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
                Spacer()
                TitlesView(fillColor: Color.titleRed, title: "Unholy Heat", fontSize: 30)
                ZStack {
                    Rectangle()
                        .stroke(Color(borderColor), lineWidth: 10)
                        .frame(width: 320)
                }
                TitlesView(fillColor: Color.titleRed, title: "Instant", fontSize: 25)
                ZStack {
                    Rectangle()
                        .border(Color(borderColor), width: 5)
                        .frame(width: 300, height: 200)
                        .foregroundStyle(Color(fillColor))
                }
                Spacer()
            }
        }
    }
}

#Preview {
    CardView(
        borderColor: Color.red,
        backgroundImage: Image("fireBackground"),
        fillColor: Color.textRed,
        creatureImage: Image("unholyHeat"),
        description1: "Unholy Heat deals 2 damage to target creature or planeswalker.",
        description2: "Insert 'delirium'",
        story: "'The devils use fire. Why shouldn't we?'"
    )
}
