//
//  SeparatorView.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct SeparatorView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 2)
                .opacity(0.2)
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 2)
                .opacity(0.7)
        }
    }
}

struct SeparatorView_Previews: PreviewProvider {
    static var previews: some View {
        SeparatorView()
    }
}
