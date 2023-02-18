//
//  LCDPrimaryTextSTyle.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct LCDPrimaryTextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontDesign(.monospaced)
            .lineLimit(1)
            .kerning(0.0)
            .font(.system(size: 140).bold())
            .foregroundColor(.lcdText)
            .shadow(color: .lcdText.opacity(0.8), radius: 4)
            .minimumScaleFactor(0.1)
    }
}

extension View {
    func lcdTextStyle() -> some View {
        modifier(LCDPrimaryTextViewModifier())
    }
}

struct LCDPrimaryTextSTyle_Previews: PreviewProvider {
    static var previews: some View {
        Text("171.8")
            .lcdTextStyle()
            .padding()
            .background(LCDScreenBackground())
    }
}
