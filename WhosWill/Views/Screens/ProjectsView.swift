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
    @State var showDetails: Bool = false
    let haptics = UINotificationFeedbackGenerator()

    var body: some View {
        // MARK: - Header
        HeaderView(showInfoView: $showInfo)

        Spacer()

        TabView {
            ForEach(projectsData, id: \.self) { project in
                Button {
                    self.haptics.notificationOccurred(.success)
                    self.showDetails.toggle()
                } label: {
                    CardView(project: project)
                        .padding(.horizontal, 10)
                }
                .sheet(isPresented: $showDetails, content: {
                    ProjectDetailView(project: project)
                })
            }
        }
        .foregroundStyle(Color.black)
        .background(Color.black.opacity(0.1))
        .tabViewStyle(.page)
        
        Spacer()
    }
}

#Preview {
    ProjectsView()
}
