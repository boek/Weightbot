//
//  Color+SaneHSB.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

extension Color {
    init(h: Int, s: Int, b: Int) {
        self.init(
            hue: Double(h) / 360,
            saturation: Double(s) / 100,
            brightness: Double(b) / 100
        )
    }
}
