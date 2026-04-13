//
//  ProductGridViewModel.swift
//  GNEcommerce
//
//  Created by joe on 4/13/26.
//

import SwiftUI

@Observable
class ProductGridViewModel {
    let filter: ProductFilter
    
    var products: [Product] {
        switch filter {
        case .all:
            return ProductsClient.fetchProducts()
        case .isFeatured:
            return ProductsClient.fetchProducts().filter { $0.isFeatured }
        case .highlyRated:
            return ProductsClient.fetchProducts().filter { $0.rating > 4 }
        }
    }
    
    init(filter: ProductFilter) {
        self.filter = filter
    }
}
