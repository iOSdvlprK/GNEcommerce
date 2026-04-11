//
//  UIScreen+Extensions.swift
//  GNEcommerce
//
//  Created by joe on 4/11/26.
//

import SwiftUI

extension UIScreen {
    static var current: UIScreen? {
        UIApplication.shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first?.windowScene?.screen
    }
}
