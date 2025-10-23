//
//  Product.swift
//  PracticeTestGroceryManager
//
//  Created by Sultan  on 23/10/2025.
//

import Foundation
struct Product: Identifiable {
    let id = UUID() // Provides a unique ID for each book instance.
    var title: String
    var price: Double
    var Image: String
    var count: Int
}
