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
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                    .tag(1)

                CartView()
                    .tabItem {
                        Label("Cart", systemImage: "cart.fill")
                    }
                    .tag(2)

                FavoritesView()
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                    }
                    .tag(3)
            }
            .environment(favoritesManager)
            .environment(cartManager)
            .environment(tabManager)
            .preferredColorScheme(.light)
        }
    }
}

