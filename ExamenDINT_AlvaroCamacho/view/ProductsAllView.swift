//
//  ProductsAllView.swift
//  ExamenDINT_AlvaroCamacho
//
//  Created by Alvaro Camacho on 11/3/25.
//

import SwiftUI

struct ProductsAllView: View {
    let products: [Product]
    var body: some View {
        List(products) { product in
            NavigationLink(destination: DetailView(product: product)) {
                HStack {
                    AsyncImage(url: URL(string: product.image)) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .clipped()

                        case .failure:
                            Image("placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(
                                    width: .infinity, height: .infinity)

                        case .empty:
                            ProgressView()
                        @unknown default:
                            EmptyView()
                        }

                    }
                    VStack(alignment: .leading){
                        Text(product.title)
                            .font(.headline)
                        
                        Text("$\(product.price, specifier: "%.2f")")
                            .font(.subheadline)
                            .foregroundColor(.red)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ProductsAllView(products: [])
}
