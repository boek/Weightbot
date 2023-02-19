//
//  PickerShape.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct PickerShape: Shape {
    let insetSize: Double = 16
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: .zero)
            var point = CGPoint(x: rect.midX - insetSize, y: 0)
            path.addLine(to: point)
            point.x = point.x + insetSize
            point.y = point.y + insetSize
            path.addLine(to: point)
            point.x = point.x + insetSize
            point.y = point.y - insetSize
            path.addLine(to: point)
            point.x = rect.maxX
            path.addLine(to: point)
            point.y = rect.maxY
            path.addLine(to: point)
            point.x = rect.minX
            path.addLine(to: point)
            path.addLine(to: .zero)
        }
    }
}

struct PickerShape_Previews: PreviewProvider {
    static var previews: some View {
        PickerShape()
            .fill()
    }
}
