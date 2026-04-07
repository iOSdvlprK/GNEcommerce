//
//  BannerImageModifier.swift
//  GNEcommerce
//
//  Created by joe on 4/7/26.
//

import SwiftUI

extension Image {
    func bannerImageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 250)
    }
}
