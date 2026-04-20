//
//  ProductInCart.swift
//  GNEcommerce
//
//  Created by joe on 4/20/26.
//

import SwiftUI

struct ProductInCart: Identifiable {
    var id: String {
        product.id
    }
    let product: Product
    var quantity: Int
}
