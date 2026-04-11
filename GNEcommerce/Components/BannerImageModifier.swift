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
            .frame(width: UIScreen.current?.bounds.width, height: 250)
    }
}
