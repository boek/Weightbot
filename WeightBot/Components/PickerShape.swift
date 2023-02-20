//
//  PickerShape.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct PickerShape: Shape, InsettableShape {
    let insetSize: Double = 16
    var insetAmount: Double = 0.0

    func path(in rect: CGRect) -> Path {
        return Path { path in
            var point = CGPoint.zero
            point.y = -insetAmount
            path.move(to: point)
            point.x = rect.midX - insetSize
            path.addLine(to: point)
            point.x = point.x + insetSize
            point.y = point.y + insetSize
            path.addLine(to: point)
            point.x = point.x + insetSize
            point.y = point.y - insetSize
            path.addLine(to: point)
            point.x = rect.maxX + insetAmount
            path.addLine(to: point)
            point.y = rect.maxY + insetAmount
            path.addLine(to: point)
            point.x = rect.minX - insetAmount
            path.addLine(to: point)
            path.addLine(to: CGPoint(x: -insetAmount, y: -(insetAmount * 2)))
        }
    }

    func inset(by amount: CGFloat) -> some InsettableShape {
        var inset = self
        inset.insetAmount = amount
        return inset
    }
}

struct PickerShape_Previews: PreviewProvider {
    static var previews: some View {
        PickerShape()
            .fill()
            .overlay {
                PickerShape()
                    .strokeBorder(.red.opacity(0.4), lineWidth: 8)
            }
            .padding()
    }
}
