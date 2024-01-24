//
//  Symbols.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-23.
//

import SwiftUI

struct Symbols {
    let circleFill: Color
    var circleSize: CGFloat
    let icon: Image
    var iconWidth: CGFloat
    let maskShape: any Shape
}

let fireMana = Symbols(
    circleFill: Color.manaRed,
    circleSize: 20,
    icon: Image("fireMana"),
    iconWidth: 18,
    maskShape: Circle()
)
