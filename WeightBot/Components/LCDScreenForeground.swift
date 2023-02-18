//
//  LCDScreenForeground.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

let scanlineSize = 2

struct LCDScreenForeground: View {
    var body: some View {
        GeometryReader { reader in
            VStack(spacing: 2) {
                ForEach(0..<numberOfLines(height: reader.size.height)) { _ in
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: reader.size.width, height: 2)
                        .opacity(0.1)
                }
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
