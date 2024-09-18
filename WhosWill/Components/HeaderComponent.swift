//
//  HeaderComponent.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundStyle(Color.secondary)
                .opacity(0.2)
            
            Image("logo-whoswill")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }
    }
}

#Preview {
    HeaderComponent()
}
