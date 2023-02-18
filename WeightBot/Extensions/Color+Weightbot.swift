//
//  Color+Weightbot.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

extension Color {
    static var bottomGradient: Self { .init(h: 0, s: 0, b: 80) }
    static var lcdGradientTop: Self { .init(h: 0, s: 0, b: 20) }
    static var lcdGradientBottom: Self { .init(h: 0, s: 0, b: 8) }
    static var lcdText: Self { .init(h: 192, s: 19, b: 100) }
    static var lcdTextShadow: Self { .init(h: 210, s: 41, b: 78) }
}
