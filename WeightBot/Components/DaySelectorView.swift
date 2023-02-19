//
//  DaySelectorView.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

struct DaySelectorView: View {
    @Binding var selectedDate: Date

    var body: some View {
        List {
//            ForEach(Date.now..<Date.now) { date in
//
//            }
        }
    }
}

let foo = Date.now...Date.now

struct DaySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        DaySelectorView(selectedDate: .constant(.now))
    }
}
