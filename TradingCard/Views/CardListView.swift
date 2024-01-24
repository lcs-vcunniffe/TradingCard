//
//  CardListView.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-21.
//

import SwiftUI

struct CardListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Unholy Heat", destination: CardView(card: unholyHeat))
            }
        }
    }
}

#Preview {
    CardListView()
}
