//
//  ProductViewModel.swift
//  ExamenDINT_AlvaroCamacho
//
//  Created by Alvaro Camacho on 11/3/25.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var product: [Product] = []

    init() {
        fetchDataElectronics()
    }

    func fetchDataElectronics() {
        print("Fetching data...")

        guard
            let url = URL(
                string: "https://fakestoreapi.com/products/category/electronics"
            )
        else {
            print("Error: no se pudo crear la URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            print(
                "✅ JSON recibido:",
                String(data: data, encoding: .utf8)
                    ?? "No se pudo convertir el JSON")
            do {
                let json = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    self.product = json
                }
            } catch let error as NSError {
                print("Error en la lectura", error.localizedDescription)
            }
        }.resume()
    }
    
    func fetchDataJewellery() {
        print("Fetching data...")

        guard
            let url = URL(
                string: "https://fakestoreapi.com/products/category/jewelery"
            )
        else {
            print("Error: no se pudo crear la URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            print(
                "✅ JSON recibido:",
                String(data: data, encoding: .utf8)
                    ?? "No se pudo convertir el JSON")
            do {
                let json = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    self.product = json
                }
            } catch let error as NSError {
                print("Error en la lectura", error.localizedDescription)
            }
        }.resume()
    }
    
    func fetchDataMen() {
        print("Fetching data...")

        guard
            let url = URL(
                string: "https://fakestoreapi.com/products/category/men's%20clothing"
            )
        else {
            print("Error: no se pudo crear la URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            print(
                "✅ JSON recibido:",
                String(data: data, encoding: .utf8)
                    ?? "No se pudo convertir el JSON")
            do {
                let json = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    self.product = json
                }
            } catch let error as NSError {
                print("Error en la lectura", error.localizedDescription)
            }
        }.resume()
    }
    
    func fetchDataWomen() {
        print("Fetching data...")

        guard
            let url = URL(
                string: "https://fakestoreapi.com/products/category/women's%20clothing"
            )
        else {
            print("Error: no se pudo crear la URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            print(
                "✅ JSON recibido:",
                String(data: data, encoding: .utf8)
                    ?? "No se pudo convertir el JSON")
            do {
                let json = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    self.product = json
                }
            } catch let error as NSError {
                print("Error en la lectura", error.localizedDescription)
            }
        }.resume()
    }
}
