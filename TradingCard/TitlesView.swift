//
//  TitlesView.swift
//  TradingCard
//
//  Created by Veda Niav Cunniffe on 2024-01-18.
//

import SwiftUI

struct TitlesView: View {
    
    //MARK: Stored properties
    let borderColor: Color
    let fillColor: Color
    let title: String
    
    //MARK: Computed properties
    var body: some View {
        ZStack {
            Capsule()
                .stroke(Color(borderColor), lineWidth: 10)
                .frame(width: 0, height: 50)
            Capsule()
                .stroke(Color.black, lineWidth: 2)
                .frame(width: 375, height: 50)
            Capsule()
                .frame(width: 375, height: 50)
                .foregroundStyle(Color(fillColor))
            HStack {
                Text("\(title)")
                    .bold()
                    .font(
                        .custom(
                            "Times New Roman",
                            size: 40
                        )
                )
            }
        }
    }
}

#Preview {
    TitlesView(borderColor: Color.red, fillColor: Color.titleRed, title: "Shivan Dragon")
}
