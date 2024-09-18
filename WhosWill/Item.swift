//
//  Item.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 18/9/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
