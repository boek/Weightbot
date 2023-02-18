//
//  GradientBackgroundView.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        LinearGradient(
            stops: [
                .init(color: .white, location: 0.0),
                .init(color: .bottomGradient, location: 1.0)],
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
