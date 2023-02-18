//
//  WeightTrackerView.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct WeightTrackerView: View {
    var body: some View {
        GradientBackgroundView()
            .edgesIgnoringSafeArea(.all)
            .overlay {
                VStack(spacing: 0) {
                    WeightReadout(weight: 217.7, day: "Wednesday, July 21, 2010")
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
