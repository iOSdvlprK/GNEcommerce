//
//  CartManager.swift
//  GNEcommerce
//
//  Created by joe on 4/19/26.
//

import SwiftUI

@Observable
class CartManager {
    var productsInCart: [ProductInCart] = []
    
    func addToCart(product: Product) {
        if var productInCart = productsInCart.first(where: { $0.id == product.id }) {
            productInCart.quantity += 1
        } else {
            productsInCart.append(ProductInCart(product: product, quantity: 1))
        }
    }
}
