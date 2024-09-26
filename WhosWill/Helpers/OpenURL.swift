//
//  OpenURL.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 26/9/2024.
//

import Foundation
import SwiftUI

func openURL(_ urlString: String) {
    if let url = URL(string: urlString) {
        UIApplication.shared.open(url)
    }
}
