//
//  SquareImageModifier.swift
//  GNEcommerce
//
//  Created by joe on 4/19/26.
//

import SwiftUI

extension Image {
    func squareImageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
    }
}
