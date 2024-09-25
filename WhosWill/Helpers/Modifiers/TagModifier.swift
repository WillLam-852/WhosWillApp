//
//  TagModifier.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 25/9/2024.
//

import SwiftUI

struct TagModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.white)
            .font(.footnote)
            .fontWeight(.bold)
            .frame(minWidth: 85)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(
                Capsule().fill(Color.blue)
            )
    }
}
