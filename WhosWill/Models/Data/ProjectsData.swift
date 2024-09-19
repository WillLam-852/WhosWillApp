//
//  ProjectsData.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import Foundation

var projectsData: [Project] = [
    Project(
        name: "AirGuitar",
        startDate: Date.create(year: 2018, month: 6, day: 1),
        finishDate: Date.create(year: 2018, month: 9, day: 30),
        description: "AirGuitar is an iOS application developed using Swift. It simulates a guitar by detecting users' strumming motions via the iPhone's inertial measurement unit (IMU) to produce realistic guitar sounds.",
        category: .iOS,
        tags: [.Swift],
        imageName: "AirGuitar",
        githubLink: "https://github.com/WillLam-852/AirGuitar"
    )
]
