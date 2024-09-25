//
//  ProjectDetailView.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 24/9/2024.
//

import SwiftUI
import YouTubePlayerKit

struct ProjectDetailView: View {
    let project: Project
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                    // Project Image
                Image(project.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                    // Project Name
                Text(project.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                    // Project Company and Position
                if let company = project.company,
                   let position = project.position {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(company)
                            .font(.subheadline)
                        Text(position)
                            .font(.subheadline)
                    }
                }
                
                    // Project Category
                Text("Category: \(project.category.name)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    // Project Dates
                Text("Start: \(project.startDate.toMMMMyyyyString())")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                if let finishDate = project.finishDate {
                    Text("Finish: \(finishDate.toMMMMyyyyString())")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                } else {
                    Text("In Progress")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                HStack {
                    ForEach(project.tags, id: \.self) { tag in
                        Text("\(tag.name)")
                            .modifier(TagModifier())
                    }
                }

                    // Project Description
                Text("Description")
                    .font(.headline)
                Text(project.description)
                    .font(.body)
                                
                    // GitHub Link
                if let githubLink = project.githubLink {
                    Link("GitHub Repository", destination: URL(string: githubLink)!)
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                if let websiteLink = project.websiteLink {
                    Link("Website", destination: URL(string: websiteLink)!)
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                if let youtubeLink = project.youtubeLink {
                    YouTubePlayerView(YouTubePlayer(stringLiteral: youtubeLink))
                        .frame(height: 300)
                }
            }
            .padding()
        }
        .navigationTitle(project.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

#Preview {
    ProjectDetailView(project: projectsData[1])
}
