//
//  DateView.swift
//  WeightBot
//
//  Created by Jeff Boek on 2/18/23.
//

import SwiftUI

private extension Color {
    static var inactiveGradientTop: Self {
        .init(h: 0, s: 0, b: 18)
    }
    static var inactiveGradientBottom: Self {
        .init(h: 0, s: 0, b: 41)
    }
    static var inactiveDay: Self {
        .init(h: 0, s: 0, b: 69)
    }
    static var lightOuter: Self {
        .init(h: 360, s: 81, b: 50)
    }
    static var lightInner: Self {
        .init(h: 2, s: 53, b: 96)
    }
}

struct DateView: View {
    var selected: Bool = false

    var body: some View {
        VStack(spacing: 0) {
            Text("Wed")
                .textCase(.uppercase)
                .font(.system(size: 14, weight: .semibold, design: .monospaced))
                .foregroundColor(.inactiveDay)
                .shadow(radius: 2)
            Text("21")
                .font(.system(size: 21, weight: .black, design: .default))
                .shadow(radius: 5)
            Spacer()
            RoundedRectangle(cornerRadius: 6)
                .fill(.black.shadow(.inner(color: .white.opacity(0.5), radius: 1)))
                .frame(width: 24, height: 24)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(LinearGradient(
                            colors: [
                                .white.opacity(0.4),
                                .black.opacity(0.4)
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        ))
                }
                .overlay {
                    Circle()
                        .fill(.black.shadow(.inner(color: selected ? .pink : .white, radius: 6)))
                        .padding(6)
                        .overlay {
                            Circle()
                                .foregroundStyle(
                                    RadialGradient(colors: selected ? [.lightInner, .lightOuter] : [.white.opacity(0.1), .white.opacity(0.2)], center: .center, startRadius: 1, endRadius: 10)

                                )
                                .overlay {
                                    Circle()
                                        .fill(.clear.shadow(.inner(color: .black, radius: 4)))
                                }
                                .overlay {
                                    Circle()
                                        .fill(
                                            RadialGradient(
                                                colors: [.white.opacity(0.6), .clear],
                                                center: UnitPoint.top,
                                                startRadius: 1,
                                                endRadius: 6
                                            )
                                        ).offset(y: 1)
                                        .blendMode(BlendMode.colorDodge)

                                }
                                .padding(6)
                        }
                        .shadow(color: .lightInner.opacity(selected ? 0.4 : 0.0), radius: 5)
                }

        }
        .padding(.top, 8)
        .padding(.bottom, 8)
        .frame(width: 60, height: 120)

        .background(background)
        .foregroundColor(.white)
    }

    @ViewBuilder
    private var background: some View {
        LinearGradient(
            colors: [
                .inactiveGradientTop,
                .inactiveGradientBottom
            ],
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView (.horizontal) {
            LazyHStack(spacing: 3) {
                ForEach(0..<100) { i in
                    DateView(selected: i % 3 == 0)
                }
            }
        }
        .frame(height: 120)
        .background(.black)
        .clipShape(PickerShape())


        DateView()

    }
}
