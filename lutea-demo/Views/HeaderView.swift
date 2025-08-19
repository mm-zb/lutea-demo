//
//  HeaderViewViewModel.swift
//  lutea-demo
//
//  Created by Zayan Baig on 18/08/2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let icon: String
    let background: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: UIScreen.main.bounds.width*0.1)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: 45))
                .offset(y: -UIScreen.main.bounds.height * 0.2)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)

            VStack {
                    Image(systemName: icon)
                    Text(title)
                        .bold()
            }
            .font(.system(size: UIScreen.main.bounds.width * 0.12))
            .foregroundColor(Color.white)
            .offset(y: -UIScreen.main.bounds.height * 0.05)
        }
        .frame(height: UIScreen.main.bounds.height * 0.4)
    }
}

#Preview {
    HeaderView(
        title: "Test",
        icon: "globe",
        background: Color.blue,
    )
}
