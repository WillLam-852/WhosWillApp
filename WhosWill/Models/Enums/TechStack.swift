//
//  TechStack.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

enum TechStack {
    case Swift
    case SwiftUI
    case Kotlin
    case Java
    case JavaScript
    case TypeScript
    case React
    case ReactNative
    case Angular
    case Vue
    
    var name: String {
        switch self {
            case .Swift: return "Swift"
            case .SwiftUI: return "SwiftUI"
            case .Kotlin: return "Kotlin"
            case .Java: return "Java"
            case .JavaScript: return "JavaScript"
            case .TypeScript: return "TypeScript"
            case .React: return "React"
            case .ReactNative: return "React Native"
            case .Angular: return "Angular"
            case .Vue: return "Vue"
        }
    }
}
