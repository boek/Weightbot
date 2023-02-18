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
                    SeparatorView()
                    Spacer()
                    Slider(value: $weight, in: 0...600.0)
                }
            }
    }
}

struct WeightTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        WeightTrackerView()
    }
}
