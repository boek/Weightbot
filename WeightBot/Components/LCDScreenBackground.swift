//
//  LCDScreenBackground.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct LCDScreenBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(background)
        
    }

    var background: LinearGradient {
        .init(
            colors: [.lcdGradientTop, .lcdGradientBottom],
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

struct LCDScreenBackground_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LCDScreenBackground()
        }
    }
}
