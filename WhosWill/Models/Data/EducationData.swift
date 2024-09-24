//
//  EducationData.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 24/9/2024.
//

import Foundation

let educationData: [Experience] = [
    Experience(
        organizationName: "The University Of Hong Kong",
        position: "Master of Science (Computer Science)",
        startDate: Date.create(year: 2022, month: 9, day: 1),
        endDate: nil,
        descriptions: [
            "Specialization in Software Development and Multimedia, including app development, cloud computing, computer vision, and AIoT",
            "Expected to graduate in December 2024",
            "Capstone Project: Developed an integrated wellness platform for the elderly, featuring pose-detection exercises, a ChatGPT bot, and IoT connectivity using Swift and React Native"
        ]
    ),
    Experience(
        organizationName: "The University Of Hong Kong",
        position: "Bachelor of Engineering (Computer Engineering)",
        startDate: Date.create(year: 2016, month: 9, day: 1),
        endDate: Date.create(year: 2021, month: 6, day: 30),
        descriptions: [
            "Capstone Project: Developed an emotion recognition and mental health app using Swift and Kotlin"
        ]
    )
]
