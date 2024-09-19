//
//  Tabs.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import SwiftUI

/// A description of the tabs that the app can present.
enum Tabs: Equatable, Hashable, Identifiable {
    case profile
    case projects
    case contacts

    var id: Int {
        switch self {
            case .profile: 2001
            case .projects: 2002
            case .contacts: 2003
        }
    }
    
    var name: String {
        switch self {
            case .profile: String(localized: "Profile", comment: "Tab title")
            case .projects: String(localized: "Projects", comment: "Tab title")
            case .contacts: String(localized: "Contacts", comment: "Tab title")
        }
    }
    
    var customizationID: String {
        return "willLam-852.WhosWill." + self.name
    }
    
    var symbol: String {
        switch self {
            case .profile: "person.crop.circle.fill"
            case .projects: "folder.fill"
            case .contacts: "person.2.fill"
        }
    }
}
