//
//  ProjectDetailView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 24/9/2024.
//

import SwiftUI

struct ProjectDetailView: View {
    var project: Project
    
    var body: some View {
        Text(project.name)
    }
}

#Preview {
    ProjectDetailView(project: projectsData[0])
}
