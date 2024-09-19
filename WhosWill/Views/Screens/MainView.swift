//
//  MainView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import SwiftUI
  
struct MainView: View {
    @State private var selectedTab: Tabs = .profile
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(Tabs.profile.name, systemImage: Tabs.profile.symbol, value: .profile) {
                ProfileView()
            }
            .customizationID(Tabs.profile.customizationID)
            
            Tab(Tabs.projects.name, systemImage: Tabs.projects.symbol, value: .projects) {
                ProjectsView()
            }
            .customizationID(Tabs.projects.customizationID)
            
            Tab(Tabs.contacts.name, systemImage: Tabs.contacts.symbol, value: .contacts) {
                ContactsView()
            }
            .customizationID(Tabs.contacts.customizationID)

        }
    }
}

#Preview {
    MainView()
}
