//
//  ContactsView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import SwiftUI

struct ContactsView: View {
    // MARK: - Properties
    @State var showInfo: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                // MARK: - Header
                HeaderView(showInfoView: $showInfo)
                
                Spacer()

                Text("Contact Me")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                                
                VStack(spacing: 15) {
                    ContactButton(label: "WhatsApp", systemName: "phone.circle") {
                        openURL("https://wa.me/yourNumber")
                    }
                    ContactButton(label: "Email", systemName: "envelope.circle") {
                        openURL("mailto:yourEmail@example.com")
                    }
                    ContactButton(label: "Facebook", assetName: "Facebook") {
                        openURL("https://facebook.com/yourProfile")
                    }
                    ContactButton(label: "Instagram", assetName: "Instagram") {
                        openURL("https://instagram.com/yourProfile")
                    }
                    ContactButton(label: "", assetName: "X") {
                        openURL("https://x.com/yourProfile")
                    }
                }
                
                Spacer()
            }
            .padding()
        }
    }
    
}

#Preview {
    ContactsView()
}
