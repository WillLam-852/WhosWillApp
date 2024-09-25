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
        VStack {
            Image(project.imageName)
                .resizable()
                .addBorder(Color.clear, cornerRadius: 24)
                .scaledToFit()
                .frame(minWidth: 0, maxWidth: .infinity)
            
            VStack(alignment: .center, spacing: 12) {
                Text(project.name.uppercased())
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
                
                HStack {
                    ForEach(project.tags, id: \.self) { tag in
                        Text(tag.name)
                            .modifier(TagModifier())
                    }
                }
            }
            .frame(minWidth: 280)
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    CardView(project: projectsData[0])
}
