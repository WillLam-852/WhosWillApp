//
//  CardView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import SwiftUI

struct CardView: View, Identifiable {
    let id = UUID()
    var project: Project
    
    var body: some View {
        Image(project.imageName)
            .resizable()
            .addBorder(Color.white, cornerRadius: 24)
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12) {
                    Text(project.name.uppercased())
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(Color.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    
                    ForEach(project.tags, id: \.self) { tag in
                        Text(tag.name)
                            .foregroundStyle(Color.black)
                            .font(.footnote)
                            .fontWeight(.bold)
                            .frame(minWidth: 85)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(
                                Capsule().fill(Color.white)
                            )
                    }
                }
                    .background(Color.black.opacity(0.5))
                    .frame(minWidth: 280)
                    .padding(.bottom, 50),
                alignment: .bottom
            )
    }
}

#Preview {
    CardView(project: projectsData[0])
}
