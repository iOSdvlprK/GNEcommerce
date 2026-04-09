//
//  HomeViewModel.swift
//  GNEcommerce
//
//  Created by joe on 4/9/26.
//

import SwiftUI

@Observable
class HomeViewModel {
    var featuredProducts = ProductsClient.fetchProducts().filter { $0.isFeatured }
}
