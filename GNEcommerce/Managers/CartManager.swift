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
    var addToCartAlert = false
    
    var displayTotalCartQuantity: Int {
        productsInCart.reduce(0) { $0 + $1.quantity }
    }
    
    func addToCart(product: Product) {
        if let index = productsInCart.firstIndex(where: { $0.id == product.id }) {
            productsInCart[index].quantity += 1
        } else {
            productsInCart.append(ProductInCart(product: product, quantity: 1))
        }
    }
    
    func removeFromCart(product: Product) {
        if let index = productsInCart.firstIndex(where: { $0.id == product.id }) {
            if productsInCart[index].quantity > 1 {
                productsInCart[index].quantity -= 1
            } else {
                productsInCart.remove(at: index)
            }
        }
    }
}
