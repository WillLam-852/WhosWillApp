//
//  ProjectsData.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import Foundation

let projectsData: [Project] = [
    Project(
        name: "Smart Rehab",
        startDate: Date.create(year: 2021, month: 6, day: 1),
        finishDate: Date.create(year: 2024, month: 7, day: 31),
        description: "Developed an AI-based pose detection remote rehabilitation application for stroke patients, using Swift, Kotlin and React Native. Developed web frontend to assign therapy plan and view data for therapists, using React.js. Won the Geneva Inventions Exhibition Gold Medal (2024 April). Successfully launched in several hospitals and healthcare organizations over the world.",
        category: .fullStack,
        tags: [.Swift, .ReactNative],
        imageName: "SmartRehab",
        githubLink: nil,
        websiteLink: "https://www.remobility.net/smartrehab",
        youtubeLink: "https://www.youtube.com/watch?v=__H1npmoCbA",
        company: "Remobility Limited",
        position: "Senior Software Engineer",
        screenShots: []
    ),
    Project(
        name: "Air Guitar",
        startDate: Date.create(year: 2018, month: 6, day: 1),
        finishDate: Date.create(year: 2018, month: 9, day: 30),
        description: "AirGuitar is an iOS application developed using Swift. It simulates a guitar by detecting users' strumming motions via the iPhone's inertial measurement unit (IMU) to produce realistic guitar sounds.",
        category: .iOS,
        tags: [.Swift],
        imageName: "AirGuitar",
        githubLink: "https://github.com/WillLam-852/AirGuitar",
        screenShots: []
        
    ),
    Project(
        name: "Honeymoon",
        startDate: Date.create(year: 2024, month: 8, day: 1),
        finishDate: Date.create(year: 2024, month: 9, day: 30),
        description: "A demo SwiftUI mobile app for selecting honeymoon destinations",
        category: .iOS,
        tags: [.SwiftUI],
        imageName: "Honeymoon",
        githubLink: "https://github.com/WillLam-852/Honeymoon_ios",
        screenShots: []
    ),
    Project(
        name: "Delivery",
        startDate: Date.create(year: 2024, month: 8, day: 1),
        finishDate: Date.create(year: 2024, month: 9, day: 30),
        description: "Delivery is a demo iOS app built with SwiftUI that showcases a delivery service application. Users can see a list of deliveries, including the receiver's photo and the item description, as well as the delivery details when they click on the delivery item..",
        category: .iOS,
        tags: [.SwiftUI],
        imageName: "Delivery",
        githubLink: "https://github.com/WillLam-852/Delivery_ios",
        screenShots: []
    )
]
