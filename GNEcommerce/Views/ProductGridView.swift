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
    
    var body: some View {
        VStack {
            TwoColumnGrid {
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
