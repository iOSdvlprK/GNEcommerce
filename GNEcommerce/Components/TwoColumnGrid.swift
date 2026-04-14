//
//  TwoColumnGrid.swift
//  GNEcommerce
//
//  Created by joe on 4/14/26.
//

import SwiftUI

struct TwoColumnGrid<Content: View>: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                content()
            }
        }
    }
}
