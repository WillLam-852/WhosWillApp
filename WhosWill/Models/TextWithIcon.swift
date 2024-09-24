//
//  TextWithIcon.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 20/9/2024.
//

import Foundation

struct TextWithIcon: Hashable {
    var imageName: String?
    var text: String
    
    init(_ text: String, imageName: String? = nil) {
        self.text = text
        self.imageName = imageName
    }
}
