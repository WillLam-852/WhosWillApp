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

    var body: some View {
        NavigationView {
            VStack {
                // MARK: - Header
                HeaderView(showInfoView: $showInfo)
                
                Spacer()
                
                TabView {
                    ForEach(projectsData, id: \.self) { project in
                        NavigationLink(destination: ProjectDetailView(project: project)) {
                            CardView(project: project)
                                .frame(maxHeight: 450)
                                .padding(.horizontal, 10)
                        }
                    }
                }
                .foregroundStyle(Color.black)
                .background(Color.black.opacity(0.1))
                .tabViewStyle(.page)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ProjectsView()
}
