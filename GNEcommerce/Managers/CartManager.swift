//
//  CartManager.swift
//  GNEcommerce
//
//  Created by joe on 4/19/26.
//

import SwiftUI

@Observable
class CartManager {
    var products: [Product] = ProductsClient.fetchProducts()
}
