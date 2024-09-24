//
//  ProfileData.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 20/9/2024.
//

import Foundation

struct ProfileData {
    
    static let aboutMe: [String] = [
        "🔥 An enthusiastic developer with over 10 years of expertise in software development (Started coding when I was 15...)",
        "📱 Specialized in mobile app development (iOS / Hybrid). I love Apple ecosystem!!!",
        "🌱 Continuously learning how to build scalable software with clean and high-quality code.",
        "👀 Interested in mobile app development, UI/UX design, AI, IoT solutions, fintech... any latest trend of technology.",
        "💞️ Looking to collaborate on any innovative applications and projects. Please contact me.",
        "⚡ Fun fact: I love Pokémon!"
    ]
    
    static let quote = """
        “Love what you do. 
        Do what you love!”
    """
    
    static let mobileAppDevelopmentSkills: [TechStack] = [
        .Swift, .SwiftUI, .ReactNative, .Flutter
    ]
    
    static let webFrontendDevelopmentSkills: [TechStack] = [
        .HTML, .CSS, .JavaScript, .TypeScript, .React, .Angular
    ]

}
