//
//  ApiNetwork.swift
//  ExamenDINT_AlvaroCamacho
//
//  Created by Alvaro Camacho on 11/3/25.
//

import Foundation

struct Product: Decodable, Identifiable, Hashable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let image: String
}
