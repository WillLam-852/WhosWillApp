//
//  InfoView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import SwiftUI

struct InfoView: View {
        // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                                                
                Spacer(minLength: 10)
                
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(ItemOne: "Application", ItemTwo: "Who's Will")
            RowAppInfoView(ItemOne: "Compatibility", ItemTwo: "iPhone and iPad")
            RowAppInfoView(ItemOne: "Swift Version", ItemTwo: "6.0")
            RowAppInfoView(ItemOne: "Developer", ItemTwo: "Will Lam")
            RowAppInfoView(ItemOne: "Designer", ItemTwo: "Will Lam")
//            RowAppInfoView(ItemOne: "Website", ItemTwo: "willLam-852.com.hk")
            RowAppInfoView(ItemOne: "Version", ItemTwo: "1.0.0")
        }
    }
}

struct RowAppInfoView: View {
    var ItemOne: String
    var ItemTwo: String
    
    var body: some View {
        VStack {
            HStack {
                Text(ItemOne).foregroundStyle(Color.gray)
                Spacer()
                Text(ItemTwo)
            }
        }
        Divider()
    }
}

#Preview {
    InfoView()
}
