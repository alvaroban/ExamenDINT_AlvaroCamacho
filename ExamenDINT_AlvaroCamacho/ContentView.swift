//
//  ContentView.swift
//  ExamenDINT_AlvaroCamacho
//
//  Created by Alvaro Camacho on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                ProductsAllView(products: viewModel.product)
                    .navigationBarTitle("Electrónica")
                    .onAppear(){
                        viewModel.fetchDataElectronics()
                    }
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Electronics") {
                        ProductsAllView(products: viewModel.product)
                            .navigationBarTitle("Electrónica")
                            .onAppear(){
                                viewModel.fetchDataElectronics()
                            }
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Button("Jewellery") {
                        ProductsAllView(products: viewModel.product)
                            .navigationBarTitle("Joyería")
                            .onAppear(){
                                viewModel.fetchDataJewellery()
                            }
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Button("Men") {}
                }
                ToolbarItem(placement: .bottomBar) {
                    Button("Women") {}
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
