//
//  TradingCard.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-23.
//

import SwiftUI

struct TradingCard {
    let borderColor: Color
    let backgroundImage: Image
    let fillColor: Color
    let creatureImage: Image
    let description1: String
    let description2: String
    let story: String
}

let unholyHeat = TradingCard(
    borderColor: Color.red,
    backgroundImage: Image("fireBackground"),
    fillColor: Color.textRed,
    creatureImage: Image("unholyHeat"),
    description1: "Unholy Heat deals 2 damage to target creature or planeswalker.",
    description2: "Insert 'delirium'",
    story: "'The devils use fire. Why shouldn't we?'"
)
