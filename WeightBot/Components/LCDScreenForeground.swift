//
//  LCDScreenForeground.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

extension Path {
    var reversed: Path {
        let reversedCGPath = UIBezierPath(cgPath: cgPath)
            .reversing()
            .cgPath
        return Path(reversedCGPath)
    }
}

struct ShapeWithHole: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Rectangle().path(in: rect)
        let hole = Ellipse()
            .path(in: .init(origin: .init(x: -(rect.width * 0.2), y: rect.height * 0.2), size: .init(width: rect.width * 2, height: rect.height * 2))).reversed
        path.addPath(hole)
        return path
    }
}


let scanlineSize = 2

struct LCDScreenForeground: View {
    var body: some View {
        GeometryReader { reader in
            VStack(spacing: 2) {
                ForEach(0..<numberOfLines(height: reader.size.height)) { _ in
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: reader.size.width, height: 2)
                        .opacity(0.1)
                }
            }
        }.overlay {
            LinearGradient(colors: [.white, .clear], startPoint: .top, endPoint: .bottom)
                .opacity(0.2)
                .mask {
                    ShapeWithHole()
                }
        }
    }

    func numberOfLines(height: Double) -> Int {
        return Int(height) / (scanlineSize * 2)
    }
}

struct LCDScreenForeground_Previews: PreviewProvider {
    static var previews: some View {
        LCDScreenBackground()
            .overlay {
                LCDScreenForeground()
            }
    }
}
