//
//  FavoritesViewModel.swift
//  GNEcommerce
//
//  Created by joe on 4/17/26.
//

import SwiftUI

@Observable
class FavoritesViewModel {
    var products: [Product] = ProductsClient.fetchProducts()
}
