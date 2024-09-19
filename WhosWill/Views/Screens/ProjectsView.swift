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
        
        CardView(project: projectsData[0])
    }
}

#Preview {
    ProjectsView()
}
