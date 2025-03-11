//
//  DetailView.swift
//  ExamenDINT_AlvaroCamacho
//
//  Created by Alvaro Camacho on 11/3/25.
//

import SwiftUI

struct DetailView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            AsyncImage(url: URL(string: product.image)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
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
        }
        Text(product.title)
            .font(.title2)
            .bold()
        Text(product.description)
            .font(.caption)
            .padding(10)
        Text("$\(product.price, specifier: "%.2f")")
            .font(.body)
            .foregroundColor(.red)
        Spacer()
    }
}


