//
//  GNEcommerceApp.swift
//  GNEcommerce
//
//  Created by joe on 4/5/26.
//

import SwiftUI

@main
struct GNEcommerceApp: App {
    @State var favoritesManager = FavoritesManager()
    @State var cartManager = CartManager()
    @State var tabManager = TabManager()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $tabManager.selectedTab) {
                Tab("Home", systemImage: "house.fill", value: TabManager.Tab.home) {
                    HomeView()
                }
                Tab("Cart", systemImage: "cart.fill", value: TabManager.Tab.cart) {
                    CartView()
                }
                Tab("Favorites", systemImage: "heart.fill", value: TabManager.Tab.favorites) {
                    FavoritesView()
                }
            }
            .environment(favoritesManager)
            .environment(cartManager)
            .environment(tabManager)
            .preferredColorScheme(.light)
        }
    }
}

