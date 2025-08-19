//
//  LDButtonView.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import SwiftUI

struct LDButtonView: View {
    let title: String
    let bgcolour: Color
    let fgcolour: Color
    let action: () -> Void
    
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(bgcolour)
                Text(title)
                    .foregroundColor(fgcolour)
                    .bold()
            }
        }.padding()
    }
}

#Preview {
    LDButtonView(
        title: "Test",
        bgcolour: Color.green,
        fgcolour: Color.black,
        action: {},
    )
}
