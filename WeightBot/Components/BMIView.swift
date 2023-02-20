//
//  BMIView.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/19/23.
//

import SwiftUI

extension Color {
    static var bmiColor: Self {
        .init(h: 3, s: 62, b: 85)
    }
}

struct BMIView: View {
    var bmi: Double = 25.2

    var body: some View {
        HStack(alignment: .top) {
            Text("BMI")
                .opacity(0.4)
                .font(.system(size: 12))
            Text(String(format: "%.1f", bmi))
                .font(.system(size: 36))
                .foregroundColor(.bmiColor)
                .shadow(color: .bmiColor.opacity(0.4), radius: 4)
        }
        .padding(4)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .stroke(.black.opacity(0.2), lineWidth: 1)
        )
        .background(
            RoundedRectangle(cornerRadius: 4)
                .stroke(.white.opacity(0.2), lineWidth: 1)
                .offset(x: 1, y: 1)
        )
    }
}

struct BMIView_Previews: PreviewProvider {
    static var previews: some View {
        BMIView()
    }
}
