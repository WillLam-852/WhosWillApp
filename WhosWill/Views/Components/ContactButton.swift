//
//  ContactButton.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 26/9/2024.
//

import SwiftUI

struct ContactButton: View {
    let label: String
    let systemName: String?
    let assetName: String?
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                if let systemName {
                    Image(systemName: systemName)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                if let assetName {
                    Image(assetName)
                        .resizable()
                        .frame(maxWidth: 40, maxHeight: 40)
                }
                Text(label)
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black.opacity(0.7))
            .cornerRadius(15)
            .shadow(radius: 5)
        }
    }
    
    init(label: String, systemName: String? = nil, assetName: String? = nil, action: @escaping () -> Void) {
        self.label = label
        self.systemName = systemName
        self.assetName = assetName
        self.action = action
    }
}

#Preview {
    ContactButton(label: "WhatsApp", systemName: "phone.circle") {
        openURL("https://wa.me/yourNumber")
    }
}

#Preview {
    ContactButton(label: "Facebook", assetName: "Facebook") {
        openURL("https://facebook.com/yourProfile")
    }
}
