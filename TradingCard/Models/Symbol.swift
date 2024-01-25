//
//  Symbols.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-23.
//

import SwiftUI

struct Symbol {
    let circleFill: Color
    var circleSize: CGFloat
    let icon: Image
    var iconWidth: CGFloat
    let maskShape: String
}

let fireMana = Symbol(
    circleFill: Color.manaRed,
    circleSize: 20,
    icon: Image("fireMana"),
    iconWidth: 18,
    maskShape: "circle"
)

let placeholder = Symbol(
    circleFill: Color.black,
    circleSize: 0,
    icon: Image("fireMana"),
    iconWidth: 0,
    maskShape: "circle"
)
