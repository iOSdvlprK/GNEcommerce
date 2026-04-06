//
//  HomeView.swift
//  GNEcommerce
//
//  Created by joe on 4/6/26.
//

import SwiftUI

struct HomeView: View {
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
        VStack {
            NavigationBarView
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
