//
//  Date.swift
//  WhosWill
//
//  Created by Lam Wun Yin on 19/9/2024.
//

import Foundation

extension Date {
    static func create(year: Int, month: Int, day: Int) -> Date {
        return Calendar.current.date(from: DateComponents(year: year, month: month, day: day))!
    }
}
