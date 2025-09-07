//
//  Item.swift
//  FocusTimer
//
//  Created by Sean Stark on 7/9/2025.
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
