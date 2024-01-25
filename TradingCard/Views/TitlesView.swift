//
//  TitlesView.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-18.
//

import SwiftUI

struct TitlesView: View {
    
    //MARK: Stored properties
    let icon: Symbols
    let fillColor: Color
    let title: String
    let fontSize: CGFloat
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            Capsule(style: RoundedCornerStyle.continuous)
                .stroke(Color.red, lineWidth: 10)
                .frame(width: 375, height: 35)
            Capsule(style: RoundedCornerStyle.continuous)
                .frame(width: 375, height: 35)
                .foregroundStyle(Color(fillColor))
                .overlay(
                    HStack {
                        Rectangle()
                            .fill(Color.clear)
                            .frame(width: 5)
                        Text("\(title)")
                            .font(
                                .custom(
                                    "American Typewriter Condensed Bold",
                                    size: fontSize
                                )
                        )
                        Spacer()
                        //icon
                        Rectangle()
                            .fill(Color.clear)
                            .frame(width: 5)
                    }
                )
                .overlay(
                    Capsule(style: RoundedCornerStyle.continuous)
                        .stroke(Color.black, lineWidth: 3)
                        .shadow(color: Color.black, radius: 1.5, x: 1.5, y: -1.5)
                )
                .overlay(
                    Capsule(style: RoundedCornerStyle.continuous)
                        .stroke()
                        .shadow(color: Color.gray, radius: 1.5, x: 1.5, y: -1.5)
                )
                .overlay(
                    Capsule(style: RoundedCornerStyle.continuous)
                        .stroke()
                        .shadow(color: Color.white, radius: 1.5, x: -1.5, y: 1.5)
                )
                .overlay(
                    Capsule(style: RoundedCornerStyle.continuous)
                        .stroke()
                        .shadow(color: Color.white, radius: 1.5, x: -1.5, y: 1.5)
                )
                .clipShape(Capsule(style: RoundedCornerStyle.continuous))
        }
    }
}

#Preview {
    TitlesView(icon: fireMana, fillColor: Color.titleRed, title: "Unholy Heat", fontSize: 30)
}
