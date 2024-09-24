//
//  SessionCardView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 24/9/2024.
//

import SwiftUI

struct SessionCardView: View {
    let backgroundColor: Color
    let title: String
    let subtitle: String?
    let subheadline: String?
    let bodys: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            
            if let subtitle {
                Text(subtitle)
                    .font(.headline)
                    .padding(.bottom, 2)
            }
            
            if let subheadline {
                Text(subheadline)
                    .font(.headline)
                    .padding(.bottom, 2)
            }

            VStack(alignment: .leading, spacing: 5) {
                ForEach(bodys, id: \.self) { body in
                    Text("• \(body)")
                }
            }
            .font(.body)
            .padding(.top, 5)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(backgroundColor.opacity(0.1)))
        .padding(.horizontal)
    }
    
    init(backgroundColor: Color = .white, title: String, subtitle: String? = nil, subheadline: String? = nil, bodys: [String]) {
        self.backgroundColor = backgroundColor
        self.title = title
        self.subtitle = subtitle
        self.subheadline = subheadline
        self.bodys = bodys
    }
}

#Preview {
    let experience = educationData[0]
    let subheadline = experience.startDate.toMMMMyyyyString()
    SessionCardView(
        backgroundColor: Color.blue,
        title: experience.organizationName,
        subtitle: experience.position,
        subheadline: subheadline,
        bodys: experience.descriptions
    )
}
