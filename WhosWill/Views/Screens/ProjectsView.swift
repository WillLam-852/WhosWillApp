//
//  ProjectsView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import SwiftUI

struct ProjectsView: View {
    // MARK: - Properties
    @State var showInfo: Bool = false
    @State var showGuide: Bool = false

    var body: some View {
        // MARK: - Header
        HeaderView(showInfoView: $showInfo, showGuideView: $showGuide)

        Spacer()

        TabView {
            ForEach(projectsData, id: \.self) { project in
                CardView(project: project)
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .background(Color.black.opacity(0.2))
    }
}

#Preview {
    ProjectsView()
}
