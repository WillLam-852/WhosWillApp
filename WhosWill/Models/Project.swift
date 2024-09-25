//
//  Project.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import Foundation

struct Project: Hashable {
    var name: String
    var startDate: Date
    var finishDate: Date?
    var description: String
    var category: ProjectCategory
    var tags: [TechStack]
    var imageName: String
    var githubLink: String?
    var websiteLink: String?
    var youtubeLink: String?
    var company: String?
    var position: String?
    var screenShots: [String]
}
