//
//  HomeViewModel.swift
//  GNEcommerce
//
//  Created by joe on 4/9/26.
//

import SwiftUI

@Observable
class HomeViewModel {
    func fetchProducts(filter: ProductFilter) -> [Product] {
        switch filter {
        case .all:
            return ProductsClient.fetchProducts()
        case .isFeatured:
            return ProductsClient.fetchProducts().filter { $0.isFeatured }
        case .highlyRated:
            return ProductsClient.fetchProducts().filter { $0.rating > 4 }
        }
    }
}
