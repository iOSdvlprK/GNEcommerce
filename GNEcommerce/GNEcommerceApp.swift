//
//  GNEcommerceApp.swift
//  GNEcommerce
//
//  Created by joe on 4/5/26.
//

import SwiftUI

@main
struct GNEcommerceApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab("Home", systemImage: "house.fill") {
                    HomeView()
                }
                
                Tab("Cart", systemImage: "cart.fill") {
                    CartView()
                }
                
                Tab("Favorites", systemImage: "heart.fill") {
                    FavoritesView()
                }
            }
            .preferredColorScheme(.light)
        }
    }
}
