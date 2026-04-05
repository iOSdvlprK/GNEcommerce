//
//  Product.swift
//  GNEcommerce
//
//  Created by joe on 4/5/26.
//

import Foundation

struct Product: Identifiable, Decodable {
    let id: String
    let title: String
    let description: String
    let price: Int
    let rating: Double
    let image: String
    let isFeatured: Bool
    var displayPrice: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        let price = numberFormatter.string(from: price as NSNumber)
        return price ?? "$0.00"
    }
    var displayRating: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 1
        let rating = numberFormatter.string(from: rating as NSNumber)
        return rating ?? "No rating"
    }
}

extension Product: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
