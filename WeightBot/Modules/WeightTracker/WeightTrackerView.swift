//
//  WeightTrackerView.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct WeightTrackerView: View {
    @State var weight: Double = 218.8

    var body: some View {
        GradientBackgroundView()
            .edgesIgnoringSafeArea(.all)
            .overlay {
                VStack(spacing: 0) {
                    WeightReadout(weight: weight, day: "Wednesday, July 21, 2010")
                    HStack {
                        Spacer()
                        BMIView()
                            .padding([.trailing, .bottom])
                    }
                    SeparatorView()
                    Spacer()
                    Rectangle()
                        .foregroundStyle(LinearGradient(
                            colors: [.lcdGradientTop, .lcdGradientBottom],
                            startPoint: .top,
                            endPoint: .bottom
                        ))
                        .frame(height: 120)
                        .overlay {
                            LazyHStack(spacing: 3) {
                                ForEach(0..<100) { i in
                                    DateView(selected: i % 3 == 0)
                                }
                            }
                        }
                        .clipShape(PickerShape())
                        .overlay {
                            PickerShape()
                                .stroke(.black, lineWidth: 8)
                                .blur(radius: 4)
                                .clipShape(PickerShape())
                        }
                        .overlay {
                            PickerShape()
                                .strokeBorder(
                                    LinearGradient(
                                        colors: [.black.opacity(0.1), .white.opacity(0.4)],
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                    ,
                                    lineWidth: 3)
                        }
//                        .overlay {
//                            Slider(value: $weight, in: 0...600.0)
//                                .padding()
//                        }
                    Spacer()
                }
            }
    }
}

struct WeightTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        WeightTrackerView()
    }
}
