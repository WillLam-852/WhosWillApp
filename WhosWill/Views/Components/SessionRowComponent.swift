//
//  SessionRowComponent.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 20/9/2024.
//

import SwiftUI

struct SessionRowComponent: View {
    var title: String
    var rows: [TextWithIcon]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .modifier(TitleModifier())
            ForEach(rows, id: \.self) { row in
                HStack {
                    if let imageName = row.imageName {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }
                    Text(row.text)
                        .font(.body)
                }
            }
        }
    }
    
    init(title: String, texts: [String]) {
        self.title = title
        self.rows = texts.map({ text in
            TextWithIcon(text)
        })
    }
    
    init(title: String, textWithIcons: [TextWithIcon]) {
        self.title = title
        self.rows = textWithIcons
    }
}

#Preview {
    let texts: [String] = [
        "🔥 An enthusiastic developer with over 10 years of expertise in software development (Started coding when I was 15...)",
        "📱 Specialized in mobile app development (iOS / Hybrid). I love Apple ecosystem!!!",
        "🌱 Continuously learning how to build scalable software with clean and high-quality code.",
        "👀 Interested in mobile app development, UI/UX design, AI, IoT solutions, fintech... any latest trend of technology."
    ]
    SessionRowComponent(title: "About Me", texts: texts)
}

#Preview {
    SessionRowComponent(title: "Mobile App Development", textWithIcons: ProfileData.mobileAppDevelopmentSkills.map { $0.converttoTextWithIcon() } )
}
