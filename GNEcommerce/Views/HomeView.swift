//
//  HomeView.swift
//  GNEcommerce
//
//  Created by joe on 4/6/26.
//

import SwiftUI

struct HomeView: View {
    @State var viewModel = HomeViewModel()
    
    fileprivate var NavigationBarView: some View {
        HStack {
            Spacer()
            Text("Ecommerce App")
                .font(.system(size: 16, weight: .semibold))
            Spacer()
        }
        .overlay(alignment: .trailing) {
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart.fill")
                        .foregroundStyle(.black)
                    ZStack {
                        Circle()
                        Text("1")
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                    }
                    .offset(CGSize(width: 10, height: -10))
                }
            })
            .padding(.trailing)
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    NavigationBarView
                    Image("banner")
                        .bannerImageStyle()
                    HStack {
                        Text("Featured")
                            .font(.system(size: 15, weight: .semibold))
                            .padding(.leading)
                        Spacer()
                        NavigationLink {
                            ProductGridView()
                        } label: {
                            Text("View All")
                                .font(.system(size: 15, weight: .bold))
                                .padding(.trailing)
                        }
                    }
                    .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.fetchProducts(filter: .isFeatured)) { product in
                                ProductRow(product: product)
                            }
                        }
                    }
                    .padding(.leading, 5)
                    HStack {
                        Text("Highly Rated")
                            .font(.system(size: 15, weight: .semibold))
                            .padding(.leading)
                        Spacer()
                        NavigationLink {
                            ProductGridView()
                        } label: {
                            Text("View All")
                                .font(.system(size: 15, weight: .bold))
                                .padding(.trailing)
                        }
                    }
                    .padding(.top)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(viewModel.fetchProducts(filter: .highlyRated)) { product in
                                ProductRow(product: product)
                            }
                        }
                    }
                    .padding(.leading, 5)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
