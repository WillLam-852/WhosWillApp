//
//  ProjectCategory.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

enum ProjectCategory {
    case iOS
    case android
    case web
    case backend
    case fullStack
    
    var name: String {
        switch self {
            case .iOS: return "iOS"
            case .android: return "Android"
            case .web: return "Web"
            case .backend: return "Backend"
            case .fullStack: return "Full Stack"
        }
    }
}
