//
//  ProductGridView.swift
//  GNEcommerce
//
//  Created by joe on 4/7/26.
//

import SwiftUI

struct ProductGridView: View {
    @State var viewModel: ProductGridViewModel
    
    init(filter: ProductFilter) {
        self.viewModel = ProductGridViewModel(filter: filter)
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(viewModel.products) { product in
                    ProductRow(product: product)
                }
            }
        }
    }
}

#Preview {
    ProductGridView(filter: .all)
}
