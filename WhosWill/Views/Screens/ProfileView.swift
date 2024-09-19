//
//  ProfileView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import SwiftUI

struct ProfileView: View {
    // MARK: - Properties
    @State var showInfo: Bool = false
    @State var showGuide: Bool = false

    var body: some View {
        VStack {
            HeaderView(showInfoView: $showInfo, showGuideView: $showGuide)
            
            Spacer()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                        // Header
                    HStack {
                        Text("👋 Hi, I’m @WillLam-852")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.top, 20)
                    
                        // Location
                    Text("📍 From Hong Kong")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                        // Profile Summary
                    VStack(alignment: .leading, spacing: 10) {
                        Text("🔥 An enthusiastic developer with over 10 years of expertise in software development (Started coding when I was 15...)")
                            .font(.body)
                        Text("📱 Specialized in mobile app development (iOS / Hybrid). I love Apple ecosystem!!!")
                            .font(.body)
                        Text("🌱 Continuously learning how to build scalable software with clean and high-quality code.")
                            .font(.body)
                        Text("👀 Interested in mobile app development, UI/UX design, AI, IoT solutions, fintech... any latest trend of technology.")
                            .font(.body)
                        Text("💞️ Looking to collaborate on any innovative applications and projects. Please contact me.")
                            .font(.body)
                        Text("⚡ Fun fact: I love Pokémon!")
                            .font(.body)
                    }
                    
                        // Quote
                    HStack {
                        Spacer()
                        Text("“Love what you do. Do what you love!”")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .italic()
                        Spacer()
                    }
                    .padding(.vertical, 20)
                    
                    Spacer()
                }
                .padding()
                .background(
                    LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                )
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    ProfileView()
}
