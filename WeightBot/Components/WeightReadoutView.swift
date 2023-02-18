//
//  WeightReadout.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct WeightReadout: View {
    var weight: Double
    var day: String

    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 0) {
                Text(String(format: "%.1f", weight))
                    .lcdTextStyle()
                Rectangle()
                    .frame(height: 2)
                    .padding(.bottom, 10)
                    .foregroundColor(.white)
                    .opacity(0.2)
                HStack {
                    Text(day)
                        .font(.system(size: 14, design: .monospaced).bold())
                        .textCase(.uppercase)
                        .foregroundColor(.lcdText)
                        .shadow(radius: 2)
                    Spacer()

                    Text("LBS")
                        .font(.system(size: 14, design: .monospaced).bold())
                        .padding(3)
                        .background(Color.lcdText)
                        .cornerRadius(4)
                }
            }
            Spacer()
        }
        .padding()
        .background(LCDScreenBackground())
        .overlay { LCDScreenForeground() }
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .fill(.clear.shadow(.inner(radius: 10)))
        }
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(LinearGradient(
                    stops: [
                        .init(color: .bottomGradient, location: 0.0),
                        .init(color: .white, location: 1.0)
                        ],
                    startPoint: .top,
                    endPoint: .bottom
                ), lineWidth: 4)
        }
        .padding()
    }
}

struct WeightReadout_Previews: PreviewProvider {
    static var previews: some View {
        WeightReadout(weight: 217.7, day: "Wednesday, July 21, 2010")
    }
}
