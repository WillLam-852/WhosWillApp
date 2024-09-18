//
//  ButtonModifier.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Capsule().fill(Color.blue))
            .foregroundStyle(Color.white)
    }
}

