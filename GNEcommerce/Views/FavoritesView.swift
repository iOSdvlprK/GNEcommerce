//
//  FavoritesView.swift
//  GNEcommerce
//
//  Created by joe on 4/16/26.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(FavoritesManager.self) var favoritesManager
    
    fileprivate func FavoriteProductRow(product: Product) -> some View {
        HStack {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            VStack(alignment: .leading) {
                Text(product.title)
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.bottom, 1)
                Text(product.description)
                    .lineLimit(2)
                    .font(.system(size: 15))
            }
            Button(action: {
                favoritesManager.products.removeAll(where: { $0.id == product.id })
            }, label: {
                Image(systemName: "heart.fill")
            })
        }
    }
    
    var body: some View {
        VStack {
            List(favoritesManager.products) { product in
                FavoriteProductRow(product: product)
            }
        }
        .overlay {
            if favoritesManager.products.count == 0 {
                Text("Nothing to see here")
            }
        }
    }
}

#Preview {
    FavoritesView()
        .environment(FavoritesManager())
}
