//
//  TabManager.swift
//  GNEcommerce
//
//  Created by joe on 4/24/26.
//

import SwiftUI

@Observable
class TabManager {
    enum Tab {
        case home, cart, favorites
    }
    var selectedTab: Tab = .home
}
